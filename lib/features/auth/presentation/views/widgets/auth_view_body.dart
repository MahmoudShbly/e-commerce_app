import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        AuthCubit cubit = context.read<AuthCubit>();

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height * .1),

                      Text(
                        cubit.isLogin ? 'Login' : 'Signup',
                        style: Styles.textStyle38,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * .1),

                      /// ---- Name (only in signup) ----
                      if (!cubit.isLogin)
                        CustomTextFormField(
                          lable: 'Name',
                          type: TextInputType.name,
                        ),
                      if (!cubit.isLogin) const SizedBox(height: 10),
                     const SizedBox(height: 10),
                      CustomTextFormField(
                        lable: 'Email',
                        type: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        lable: 'Password',
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
                            cubit.isLogin
                                ? 'Forget your password?'
                                : 'Already have an account?',
                            style: Styles.textStyle14,
                          ),
                          IconButton(
                            icon: Icon(
                               FontAwesomeIcons.arrowRightLong,
                              size: 18,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              cubit.changeAuthFormType();
                            },
                          ),
                        ],
                      ),
                     const SizedBox(height: 32),
                      CustomButton(
                        title: cubit.isLogin
                            ? 'LOGIN'
                            : 'SIGNUP',
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Text (
                  cubit.isLogin
                      ? 'Or login with social account'
                      : 'Or sign up with social account',
                ),
              ),
             const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(MyAssets.google),
                  Image.asset(MyAssets.facebook),
                ],
              ),
             const SizedBox(height:40),
            ],
          ),
        );
      },
    );
  }
}
