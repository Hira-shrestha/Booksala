import 'package:flutter/material.dart';
import 'package:library_store/auth/login_method.dart';

class ButtonTextWidget extends StatelessWidget {
  const ButtonTextWidget(
      this.clicked, this.backgrondColor, this.title, this.icons,
      {super.key});

  final void Function() clicked;
  final Color backgrondColor;
  final String title;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    if (title == LoginTypes.email.name) {
      return FilledButton(
        onPressed: clicked,
        style: FilledButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Row(
          children: [
            Icon(icons),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const Spacer()
          ],
        ),
      );
    } else {
      return OutlinedButton(
        onPressed: clicked,
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Row(
          children: [
            Icon(icons),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const Spacer()
          ],
        ),
      );
    }
  }
}
