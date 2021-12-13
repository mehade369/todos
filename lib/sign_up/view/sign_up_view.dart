import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matrix_ui/matrix_ui.dart';
import 'package:todos/sign_in/sign_in.dart';
import 'package:todos/sign_up/sign_up.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    final Key? key,
  }) : super(key: key);

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
  Widget build(final BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (final context, final state) {
        if (state.error != null) {
          context.showSnackBar(state.error!);
        }
      },
      child: SignFormFields(
        formKey: _formKey,
        children: [
          const TopTitle(subTitle: 'Create an account'),
          const SizedBox(height: 20),
          NameInputField(namePasswordController: _namePasswordController),
          const SizedBox(height: 16),
          EmailInputFiled(emailController: _emailController),
          const SizedBox(height: 16),
          PasswordInputField(passwordController: _passwordController),
          const SizedBox(height: 16),
          BlocBuilder<SignUpCubit, SignUpState>(
            builder: (final context, final state) => AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: state.isLoading
                  ? const Loading()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(45),
                        textStyle:
                            Theme.of(context).textTheme.bodyText1?.copyWith(),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<SignUpCubit>()
                              .signUpWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                                name: _namePasswordController.text,
                              );
                        }
                      },
                      child: const Text('Sign Up'),
                    ),
            ),
          ),
          const SizedBox(height: 16),
          BottomSection(
            title: 'Already have an account?',
            subtitle: ' Sign in',
            onTap: () {
              context.flow<SignFlowState>().update(
                    (final state) => SignFlowState.signIn,
                  );
            },
          ),
        ],
      ),
    );
  }
}
