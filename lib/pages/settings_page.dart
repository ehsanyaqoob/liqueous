import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Roboto-Bold.ttf',
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Roboto-Bold.ttf',
            fontSize: 20,
            color: Colors.grey,
          ),
        )
      ])),
    );
  }
}
