
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormTypeSection extends StatelessWidget {
  const FormTypeSection({
    super.key,
    required this.isLogin,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });
  final bool isLogin;
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          isLogin ? 'Don\'t have an account?' : 'Already have an account?',
          style: Styles.textStyle14,
        ),
        TextButton(
          onPressed: () {
            context.read<AuthCubit>().changeAuthFormType();
            nameController.clear();
            emailController.clear();
            passwordController.clear();
            formKey.currentState?.reset();
          },
          child: Text(
            isLogin ? 'Register' : 'Login',
            style: Styles.textStyle14.copyWith(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}