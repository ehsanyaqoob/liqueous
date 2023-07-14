import 'package:flutter/material.dart';
import 'package:ui_design/User/user_messages.dart';
import 'package:ui_design/pages/profile_page.dart';

import '../User/user_analytics.dart';
import '../User/user_notification.dart';
import '../User/user_home.dart';
import '../User/user_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // naviigate around the buttom nav bar
  int _selectedIndex = 0;
  int _currentIndex = 0;
  void _navigateButtonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // diff pages to navigate
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserAnalytics(),
    UserNotification(),
    UserMessages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('images/nft.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Liqueous',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              onTap: () {
                Navigator.pushNamed(context, '/Account');

                //
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/Settings');

                //
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                //
                Navigator.pushNamed(context, '/Dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushNamed(context, '/Logout');
              },
            ),
            SizedBox(
              height: 250,
            ),
            ListTile(
              leading: Icon(Icons.merge_outlined),
              title: Text('Version'),
              onTap: () {
                // TODO: Navigate to settings screen
              },
            ),
          ],
        ),
      ),
      //
      appBar: AppBar(
        title: Text('HomePage'),
        centerTitle: true,
      ),
      // now body of homepage
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigateButtonNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_sharp), label: 'analytics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_important), label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded), label: 'Messages'),
        ],
      ),
    );
  }
}
