import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/feature/auth/button_text_widget.dart';
import 'package:library_store/feature/auth/login_method.dart';
import 'package:library_store/feature/auth/signup/data/repository/authrepo.dart';
import 'package:library_store/feature/auth/login/presentation/page/login_screen.dart';
import 'package:library_store/feature/auth/signup/presentation/page/signup_screen.dart';
import 'package:library_store/feature/auth/terms_of_use_widget.dart';
import 'package:library_store/feature/books/presentation/pages/book_list.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  void openWeb(String text) {
    print(text);
  }

  void switchScreen(LoginTypes types, BuildContext context) {
    switch (types) {
      case LoginTypes.email:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignupScreen()));
      case LoginTypes.login:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyLoginScreen()));

      case LoginTypes.bookListing:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Scaffold(
                      body: BookListingScreen(
                        unauthorized: true,
                      ),
                    )));
    }
  }

  void clicked(String title) {
    print(title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        //  child: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SizedBox(
            height: 200,
            child: Center(child: LogoIntext()),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: LoginTypes.values
                      .map((e) => ButtonTextWidget(
                          () => switchScreen(e, context),
                          Colors.blue,
                          e.name,
                          e.buttonIcon))
                      .toList()),
            ),
          ),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child:
          //    Padding(
          //       padding: const EdgeInsets.only(right: 24, top: 10),
          //       child: RichText(
          //         text: TextSpan(
          //           children: [
          //             const TextSpan(
          //               text: "Already have a account? ",
          //               style: TextStyle(
          //                   color: Colors.grey,
          //                   fontSize: 14,
          //                   fontStyle: FontStyle.normal,
          //                   fontWeight: FontWeight.w300),
          //             ),
          //             TextSpan(
          //                 text: "signin",
          //                 style: const TextStyle(
          //                     color: Colors.black,
          //                     fontWeight: FontWeight.bold,
          //                     fontSize: 12),
          //                 recognizer: TapGestureRecognizer()
          //                   ..onTap = () => clicked("term"))
          //           ],
          //         ),
          //       )),
          // ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TermsOfuseWidget((p0) => openWeb(p0)),
          ),
          const SizedBox(height: 50)
        ],
        // ),
      ),
    );
  }
}

class LogoIntext extends StatelessWidget {
  const LogoIntext({super.key});

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Text(
          'Library',
          style: TextStyle(
              color: Color.fromARGB(255, 60, 54, 244),
              fontSize: 45,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
