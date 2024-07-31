import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_store/core/common/profileTextfield.dart';
import 'package:library_store/core/enums/app_state.dart';
import 'package:library_store/feature/User/user.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/cubit/profile_page_state.dart';
import 'package:library_store/feature/profile_wrapper/profile/presentation/cubit/profilte_page_cubit.dart';
import 'package:library_store/feature/profile_wrapper/update_profile/presentation/pages/update_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfiltePageCubit(),
      child: BlocBuilder<ProfiltePageCubit, ProfilePageState>(
        builder: (context, state) {
          return BlocListener<ProfiltePageCubit, ProfilePageState>(
            listener: (context, state) {
              // TODO: implement listener
              if (state.status == AppState.success) {
                if (state.user != null) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(
                          content: Text("User updated successfully!")),
                    );
                  context.read<ProfiltePageCubit>().updateView(state.user!);
                  print(state.user!);
                  context
                      .read<ProfiltePageCubit>()
                      .enableUpdate(state.updateProfile);
                  Future.delayed(const Duration(seconds: 2), () {
                    context.read<ProfiltePageCubit>().resetState();
                  });
                }
              }
            },
            listenWhen: (previous, current) => previous.user != current.user,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("User Profile"),
                centerTitle: false,
                actions: [
                  IconButton(
                      color: const Color(0xFF3F5AA6),
                      icon: const Icon(Icons.edit_square),
                      onPressed: () async {
                        // context
                        //     .read<ProfiltePageCubit>()
                        //     .enableUpdate(state.updateProfile);

                        final user = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpdateProfile()));
                        if (user != null) {
                          context.read<ProfiltePageCubit>().updateView(user);
                        }
                        // Navigator.pushNamed(context, '/updateProfile');
                      }),
                ],
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
                        controller: context
                            .read<ProfiltePageCubit>()
                            .firstNameController),
                    const SizedBox(
                      height: 30,
                    ),
                    Profiletextfield(
                        fieldName: "Last Name",
                        controller: context
                            .read<ProfiltePageCubit>()
                            .lastNameController),
                    const SizedBox(
                      height: 30,
                    ),
                    Profiletextfield(
                        fieldName: "Email",
                        controller:
                            context.read<ProfiltePageCubit>().emailController),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget textfield(
      {required String fieldName,
      required bool editingState,
      required TextEditingController controller}) {
    return TextFormField(
        // enabled: editingState,
        controller: controller,
        readOnly: !editingState,
        autocorrect: false,
        decoration: InputDecoration(
          label: Text(fieldName),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ));
  }
}
