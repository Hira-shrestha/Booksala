import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsOfuseWidget extends StatelessWidget {
  const TermsOfuseWidget(this.clicked, {super.key});

  final void Function(String) clicked;
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          const TextSpan(
              text: "By continuing, you accept the ",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12)),
          TextSpan(
              text: "Terms of Use",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              recognizer: TapGestureRecognizer()
                ..onTap = () => clicked("term")),
          const TextSpan(
              text: " and ",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w300,
                  fontSize: 12)),
          TextSpan(
              text: "Privacy Policy",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              recognizer: TapGestureRecognizer()
                ..onTap = () => clicked("privicy"))
        ]));
  }
}
