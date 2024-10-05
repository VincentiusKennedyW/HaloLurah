import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pengaduan_warga/firebase_options.dart';
import 'package:pengaduan_warga/presentation/bloc/complaint_form/complaint_form_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/history/history_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/login_bloc/login_bloc.dart';
import 'package:pengaduan_warga/presentation/bloc/register_bloc/register_bloc.dart';
import 'package:pengaduan_warga/utils/injection.dart' as di;
import 'package:pengaduan_warga/utils/notification_service.dart';
import 'package:pengaduan_warga/utils/routes.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:pengaduan_warga/utils/theme.dart';

void main() async {
  usePathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  NotificationService notificationService = NotificationService();
  await notificationService.initialize();

  di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<LoginBloc>()..add(IsLoggedIn()),
        ),
        BlocProvider(
          create: (context) => di.locator<RegisterBloc>(),
        ),
        BlocProvider(
          create: (context) => di.locator<ComplaintFormBloc>(),
        ),
        BlocProvider(
          create: (context) => di.locator<HistoryBloc>(),
        ),
      ],
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoggedIn) {
            router.goNamed('complaint_form');
          } else if (state is NotLoggedIn) {
            router.goNamed('login');
          }
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Pengaduan Warga',
          theme: ThemeData(
            textTheme: myTextTheme,
            colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: primaryColor,
                secondary: secondaryColor,
                onPrimary: thirdColor,
                surface: fourthColor),
            appBarTheme: const AppBarTheme(
              backgroundColor: seventhColor,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                foregroundColor: fourthColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: thirdColor),
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
