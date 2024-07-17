import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/auth/signup/presentation/cubit/signup_cubit.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({required this.submitTapped, super.key});
  final VoidCallback submitTapped;

  @override
  State<SignupForm> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<SignupForm> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return
      Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your First Name",
                labelText: "First name",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter first name';
                }
                return null;
              },
              onChanged: (newValue) {
                context.read<SignupCubit>().onFirstNameChanged(newValue);
            },
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your Last name",
                labelText: "Last name",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Last name';
                }
                return null;
              },
              onChanged: (newValue) {
                context.read<SignupCubit>().onLastNameChanged(newValue);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your email address",
                labelText: "Email",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
              onChanged: (newValue) {
                context.read<SignupCubit>().onEmailChanged(newValue);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                labelText: "Password",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter password';
                }
                return null;
              },
              onChanged: (newValue) {
                context.read<SignupCubit>().onPasswordChanged(newValue);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    // ScaffoldMessenger.of(context).showSnackBar(
                    //   const SnackBar(content: Text('Processing Data')),
                    // );
                    widget.submitTapped();
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      );
  }
}
