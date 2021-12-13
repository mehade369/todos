import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todos/sign_in/sign_in.dart';

class SignInView extends StatefulWidget {
  const SignInView({
    final Key? key,
  }) : super(key: key);

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late final TextEditingController _emailController;
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _passwordController;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (final context, final state) {
        state.whenOrNull(
          failure: context.showSnackBar,
        );
      },
      child: SignFormFields(
        formKey: _formKey,
        children: [
          const TopTitle(subTitle: 'Welcome back'),

          // Email
          const SizedBox(height: 20),
          EmailInputFiled(emailController: _emailController),

          // Password
          const SizedBox(height: 20),
          PasswordInputField(passwordController: _passwordController),

          const SizedBox(height: 20),
          BlocBuilder<SignInCubit, SignInState>(
            builder: (final context, final state) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: state.maybeWhen(
                loading: () => const Loading(),
                orElse: () => Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        textStyle:
                            Theme.of(context).textTheme.bodyText1?.copyWith(),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<SignInCubit>()
                              .signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                        }
                      },
                      child: const Text('Sign In'),
                    ),

                    const SizedBox(height: 20),

                    OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                      ),
                      onPressed: () {
                        context.read<SignInCubit>().signInWithGoogle();
                      },
                      child: const Text('Sign in with Google'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
          BottomSection(
            title: "Don't have an account?",
            subtitle: ' Sign up',
            onTap: () {
              context.flow<SignFlowState>().update(
                    (final state) => SignFlowState.signUp,
                  );
            },
          ),
        ],
      ),
    );
  }
}
