import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pengaduan_warga/utils/theme.dart';

class BottomNavigationHelper extends StatefulWidget {
  const BottomNavigationHelper({super.key, required this.child});
  final StatefulNavigationShell child;

  @override
  State<BottomNavigationHelper> createState() => _BottomNavigationHelperState();
}

class _BottomNavigationHelperState extends State<BottomNavigationHelper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: widget.child.currentIndex,
        onTap: (index) {
          widget.child.goBranch(
            index,
            initialLocation: index == widget.child.currentIndex,
          );
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
            backgroundColor: seventhColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat Laporan',
            backgroundColor: seventhColor,
          ),
        ],
      ),
    );
  }
}
