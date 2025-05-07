import 'package:flutter/material.dart';

class DrawerMenuBar extends StatefulWidget {
  const DrawerMenuBar({super.key});
  @override
  State<DrawerMenuBar> createState() => _DrawerMenuBarState();
}

class _DrawerMenuBarState extends State<DrawerMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 메인 콘텐츠
          Center(child: Text('Main Content', style: TextStyle(fontSize: 24))),
          // 화면 전체를 덮는 Drawer
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: MediaQuery.of(context).size.width, // 화면 전체 너비
              height: MediaQuery.of(context).size.height, // 화면 전체 높이
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'Drawer Header',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      // Handle navigation to Home
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      // Handle navigation to Settings
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
