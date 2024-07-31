import 'package:flutter/material.dart';

enum LoginTypes { email, login, bookListing } //facebook, google, apple }

extension LoginMethods on LoginTypes {
  String get name {
    switch (this) {
      case LoginTypes.email:
        return 'Continue with Email';

      case LoginTypes.login:
        return 'Login';

      case LoginTypes.bookListing:
        return 'Book Listing';

      // case LoginTypes.facebook:
      //   return 'Continue with Facebook';

      // case LoginTypes.google:
      //   return 'Continue with Google';

      // case LoginTypes.apple:
      //   return 'Continue with Apple';
      default:
        return "not found";
    }
  }

  IconData get buttonIcon {
    switch (this) {
      case LoginTypes.email:
        return Icons.email;

      case LoginTypes.bookListing:
        return Icons.book;
      // case LoginTypes.facebook:
      //   return Icons.facebook;

      // case LoginTypes.google:
      //   return Icons.lock;

      // case LoginTypes.apple:
      //   return Icons.apple;
      default:
        return Icons.email;
    }
  }
}
