import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pengaduan_warga/data/complaint_service.dart';
import 'package:pengaduan_warga/presentation/screens/auth_screen/forgot_password_screen.dart';
import 'package:pengaduan_warga/presentation/screens/auth_screen/login_screen.dart';
import 'package:pengaduan_warga/presentation/screens/auth_screen/register_screen.dart';
import 'package:pengaduan_warga/presentation/screens/complaint_form_screen.dart';
import 'package:pengaduan_warga/presentation/screens/history_screen.dart';
import 'package:pengaduan_warga/utils/bottom_navigation_helper.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _historyNavigatorKey =
    GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/complaint_form',
  routes: [
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: _rootNavigatorKey,
      builder: (BuildContext context, GoRouterState state,
              StatefulNavigationShell navigationShell) =>
          BottomNavigationHelper(child: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              name: 'complaint_form',
              path: '/complaint_form',
              builder: (context, state) => const ComplaintFormScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _historyNavigatorKey,
          routes: [
            GoRoute(
              name: 'history',
              path: '/history',
              builder: (context, state) =>
                  HistoryScreen(complaintService: ComplaintService()),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'register',
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: 'forgot_password',
      path: '/forgot_password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
  ],
);
