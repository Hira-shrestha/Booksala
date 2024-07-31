import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:library_store/feature/auth/login/presentation/cubit/newlogin_cubit.dart';
import 'package:library_store/feature/auth/login/presentation/cubit/newlogin_state.dart';
import 'package:library_store/feature/auth/login/presentation/page/login_form.dart';
import 'package:library_store/listing_widget.dart';
import 'package:library_store/feature/tab/tabbar_controller.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({super.key});

  void gotoListing(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const TabBarController()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewLoginCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Log in"),
        ),
        body: Builder(builder: (context) {
          return BlocListener<NewLoginCubit, NewLoginState>(
            listener: (context, state) {
              if (state.status == FormzSubmissionStatus.inProgress) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(content: Text('Please wait a moment')),
                  );
              } else if (state.status == FormzSubmissionStatus.failure) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(content: Text(state.error ?? 'Error')),
                  );
                context.read<NewLoginCubit>().resetState();
              } else if (state.status == FormzSubmissionStatus.success) {
                context.read<NewLoginCubit>().resetState();
                gotoListing(context);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Login to your account",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 500,
                    child: LoginForm(
                      () {
                        context.read<NewLoginCubit>().onLogin();
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
