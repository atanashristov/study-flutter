import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppScaffoldBottomNavigationBar extends StatelessWidget {
  const AppScaffoldBottomNavigationBar({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldBottomNavigationBar'));

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Accounts'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Configuration'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) {
          navigationShell.goBranch(tappedIndex);
        },
      ),
    );
  }
}
