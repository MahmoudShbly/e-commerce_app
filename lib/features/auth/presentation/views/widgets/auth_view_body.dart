import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/continue_with_social.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/fields_section.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/form_type_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthViewBody extends StatelessWidget {
  AuthViewBody({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passswordController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        AuthCubit cubit = context.watch<AuthCubit>();
        return Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 16.0, right: 16.0),
          child: Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    Text(
                      cubit.isLogin ? 'Login' : 'Signup',
                      style: Styles.textStyle38,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    FieldsSection(
                      formKey: formKey,
                      nameController: nameController,
                      emailController: emailController,
                      passswordController: passswordController,
                    ),
                    const SizedBox(height: 32),
                    CustomButton(
                      title: cubit.isLogin ? 'LOGIN' : 'SIGNUP',
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          debugPrint('accept');
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    FormTypeSection(
                      isLogin: cubit.isLogin,
                      formKey: formKey,
                      nameController: nameController,
                      emailController: emailController,
                      passswordController: passswordController,
                    ),
                    SizedBox(
                      height: cubit.isLogin
                          ? size.height * .17
                          : size.height * .09,
                    ),
                    ContinueWithSocialSection(isLogin: cubit.isLogin),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
