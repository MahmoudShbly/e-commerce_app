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

                      Text('Login', style: Styles.textStyle42),
                      SizedBox(height: MediaQuery.of(context).size.height * .1),
                      CustomTextFormField(
                        lable: 'Email',
                        type: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 10),
                      CustomTextFormField(
                        lable: 'Password',
                        type: TextInputType.emailAddress,
                        isPassword: !context.read<AuthCubit>().isPasswordShow,
                        suffixIcon: IconButton(
                          icon: Icon(
                            context.read<AuthCubit>().isPasswordShow
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            context.read<AuthCubit>().changePasswordVisibility();
                          },
                        ),
                      ),
                      SizedBox(height: 20),
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
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      CustomButton(title: 'LOGIN'),
                    ],
                  ),
                ),
              ),
              Center(child: Text('Or login with social account')),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(MyAssets.facebook),
                  Image.asset(MyAssets.google),
                ],
              ),
              SizedBox(height: 18),
            ],
          ),
        );
      },
    );
  }
}
