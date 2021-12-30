import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todos/sign_in/sign_in.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({final Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late final TextEditingController _emailController;
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _namePasswordController;
  late final TextEditingController _passwordController;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _namePasswordController.dispose();
    _formKey.currentState?.dispose();
    log('SignUpView disposed');
    super.dispose();
  }

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _namePasswordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(final BuildContext context) =>
      BlocListener<SignInCubit, SignInState>(
        listener: (final context, final state) => state.whenOrNull(
          failure: context.showSnackBar,
        ),
        child: SignFormFields(
          formKey: _formKey,
          children: [
            const TopTitle(title: 'ToDos', subTitle: 'Create an account'),

            // Name
            const SizedBox(height: 20),
            NameInputField(namePasswordController: _namePasswordController),

            // Email
            const SizedBox(height: 20),
            EmailInputFiled(emailController: _emailController),

            // Password
            const SizedBox(height: 20),
            PasswordInputField(passwordController: _passwordController),

            const SizedBox(height: 20),
            BlocBuilder<SignInCubit, SignInState>(
              builder: (final context, final state) => state.maybeWhen(
                loading: () => const Loading(),
                orElse: () => Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        textStyle: Theme.of(context).textTheme.subtitle1,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<SignInCubit>()
                              .signUpWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                                name: _namePasswordController.text,
                              );

                          _emailController.clear();
                          _passwordController.clear();
                          _namePasswordController.clear();
                        }
                      },
                      child: const Text('Sign Up'),
                    ),
                    const SizedBox(height: 20),
                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                      ),
                      onPressed: context.read<SignInCubit>().signInWithGoogle,
                      child: const Text('Sign in with Google'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            BottomSection(
              title: 'Already have an account?',
              subtitle: ' Sign in',
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      );
}
