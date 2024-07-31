import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/core/common/flatButtons.dart';
import 'package:library_store/core/common/profileTextfield.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/cubit/profile_page_state.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/cubit/profilte_page_cubit.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfiltePageCubit, ProfilePageState>(
      builder: (context, state) {
        return BlocListener<ProfiltePageCubit, ProfilePageState>(
          listener: (contextUpdate, state) {
            // TODO: implement listener
            if (state.status == AppState.success) {
              if (state.user != null) {
                Navigator.pop(contextUpdate, state.user);
              }
            }

            if (state.status == AppState.failure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              Future.delayed(const Duration(seconds: 2), () {
                context.read<ProfiltePageCubit>().resetState();
              });
            }
          },
          listenWhen: (previous, current) =>
              previous.status != current.status ||
              previous.user != current.user,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Update Profile"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/bookCover.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Profiletextfield(
                      fieldName: 'First Name',
                      readOnly: false,
                      controller: context
                          .read<ProfiltePageCubit>()
                          .firstNameController),
                  const SizedBox(
                    height: 30,
                  ),
                  Profiletextfield(
                      fieldName: "Last Name",
                      readOnly: false,
                      controller:
                          context.read<ProfiltePageCubit>().lastNameController),
                  const SizedBox(
                    height: 30,
                  ),
                  Profiletextfield(
                      fieldName: "Email",
                      controller:
                          context.read<ProfiltePageCubit>().emailController),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                  ),
                  FlatButton(
                      name: 'Update',
                      coloredButton: true,
                      buttonColor: const Color(0xFF3F5AA6),
                      titleColor: Colors.white,
                      ontap: () {
                        context
                            .read<ProfiltePageCubit>()
                            .performUpdat(state.userId ?? '');
                      })
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
