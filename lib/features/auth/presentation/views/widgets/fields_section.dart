import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class FieldsSection extends StatelessWidget {
  FieldsSection({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = context.watch<AuthCubit>();

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          children: <Widget>[
            if (!cubit.isLogin)
              CustomTextFormField(
                controller: nameController,
                focusNode: nameFocusNode,
                nextAction: () =>
                    FocusScope.of(context).requestFocus(emailFocusNode),
                label: 'Name',
                type: TextInputType.name,
              ),
            if (!cubit.isLogin) const SizedBox(height: 10),
            CustomTextFormField(
              controller: emailController,
              focusNode: emailFocusNode,
              nextAction: () =>
                  FocusScope.of(context).requestFocus(passwordFocusNode),
              label: 'Email',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            CustomTextFormField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              nextAction: () {
                if (formKey.currentState!.validate()) {
                  GoRouter.of(context).go(AppRouter.mainView);
                }
              },

              label: 'Password',
              type: TextInputType.visiblePassword,
              isPassword: !cubit.isPasswordShow,
              suffixIcon: IconButton(
                icon: Icon(
                  cubit.isPasswordShow
                      ? FontAwesomeIcons.solidEyeSlash
                      : FontAwesomeIcons.solidEye,
                ),
                onPressed: () {
                  cubit.changePasswordVisibility();
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                 
                   'Forget your password?',
                    
                  style: Styles.textStyle14,
                ),
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowRightLong,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    // forget password functionality
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
