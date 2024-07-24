import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../auth/landing_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.white,
            child: FullWidthButton(
                name: 'Log out',
                callbackAction: () {
                  print('Log out');
                  gotoHomePage(context);
                }),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }

  void gotoHomePage(BuildContext context) async {
    final Box isLoggedIn = await Hive.openBox("isLoggedIn");
    isLoggedIn.clear();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LandingScreen()),
      (Route<dynamic> route) => false,
    );
  }
}

class FullWidthButton extends StatelessWidget {
  FullWidthButton({required this.name, required this.callbackAction, Key? key})
      : super(key: key);

  final String name;
  VoidCallback callbackAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.all(4.0), // Optional: Adds some margin around the button
      width:
          double.infinity, // Makes the button take the full width of the screen
      height: double.infinity, // Set the specific height for the button
      child: ElevatedButton(
        onPressed: callbackAction,
        child: Row(
          children: [
            // Text(name),
            Text(
              name,
              // style: TextStyle(fontSize: 18.0), // Optional: Change the font size
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
