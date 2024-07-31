import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:library_store/feature/auth/signup/data/repository/authrepo.dart';
import 'package:library_store/feature/auth/signup/presentation/cubit/signup_cubit.dart';
import 'package:library_store/feature/auth/signup/presentation/cubit/signup_state.dart';
import 'package:library_store/feature/auth/signup/presentation/page/signup_form.dart';

import '../../../landing_screen.dart';
import '../../../login/presentation/page/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(AuthRepo()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Sign up"),
        ),
        body: Builder(builder: (context) {
          return BlocListener<SignupCubit, SignupState>(
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
                context.read<SignupCubit>().resetState();
              } else if (state.status == FormzSubmissionStatus.success) {
                context.read<SignupCubit>().resetState();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyLoginScreen()));
              }
            },
            child: BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state.status == FormzSubmissionStatus.inProgress,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          const Text(
                            "Signup account",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              height: 500,
                              child: SignupForm(
                                submitTapped: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  context.read<SignupCubit>().onSubmit();
                                },
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
