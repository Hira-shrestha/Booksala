

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/newlogin_cubit.dart';

class LoginForm extends StatefulWidget {
  LoginForm(this.submitTapped, {super.key});
  void Function() submitTapped;
  @override
  State<LoginForm> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
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
              context.read<NewLoginCubit>().onEmailChanged(newValue);
            },
          ),
          const SizedBox(
            height: 10,
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
              context.read<NewLoginCubit>().onPasswordChanged(newValue);
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
