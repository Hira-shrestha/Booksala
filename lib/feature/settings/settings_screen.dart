import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_store/core/common/flatButtons.dart';
import 'package:library_store/core/enums/setting_option.dart';
import 'package:library_store/feature/User/user.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/pages/profile_page.dart';

import '../auth/landing_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: false,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: SettingOption.values.length,
        itemBuilder: (BuildContext context, int index) {
          return FlatButton(
              centerTitle: false,
              name: SettingOption.values[index].toString().split('.').last,
              suffixIcon: sufficIcon(index),
              ontap: () {
                switch (SettingOption.values[index]) {
                  case SettingOption.logOut:
                    gotoHomePage(context);
                  case SettingOption.profile:
                    gotoProfilePage(context);
                }
              });
        },
        separatorBuilder: (BuildContext context, int index) =>
            const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
      ),
    );
  }

  void gotoHomePage(BuildContext context) async {
    final Box isLoggedIn = await Hive.openBox("isLoggedIn");
    var userBox = await Hive.openBox<User>('userBox');
    userBox.clear();
    isLoggedIn.clear();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LandingScreen()),
      (Route<dynamic> route) => false,
    );
  }

  void gotoProfilePage(BuildContext context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ProfilePage()));
  }

  Icon sufficIcon(int index) {
    switch (SettingOption.values[index]) {
      case SettingOption.profile:
        return const Icon(Icons.person);
      case SettingOption.logOut:
        return const Icon(Icons.logout);
    }
  }
}

// class FullWidthButton extends StatelessWidget {
//   FullWidthButton({required this.name, required this.callbackAction, Key? key})
//       : super(key: key);

//   final String name;
//   VoidCallback callbackAction;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin:
//           EdgeInsets.all(4.0), // Optional: Adds some margin around the button
//       width:
//           double.infinity, // Makes the button take the full width of the screen
//       height: double.infinity, // Set the specific height for the button
//       child: ElevatedButton(
//         onPressed: callbackAction,
//         child: Row(
//           children: [
//             // Text(name),
//             Text(
//               name,
//               // style: TextStyle(fontSize: 18.0), // Optional: Change the font size
//             ),
//             Spacer(),
//           ],
//         ),
//       ),
//     );

    
//   }
// }
