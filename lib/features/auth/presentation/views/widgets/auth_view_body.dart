
import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/core/utils/helper_function.dart';
import 'package:ecommerce_app/core/utils/styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/continue_with_social.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/fields_section.dart';
import 'package:ecommerce_app/features/auth/presentation/views/widgets/form_type_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthViewBody extends StatefulWidget {
  AuthViewBody({super.key});

  @override
  State<AuthViewBody> createState() => _AuthViewBodyState();
}

class _AuthViewBodyState extends State<AuthViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController ;

  late final TextEditingController _emailController ;

  late final TextEditingController _passwordController ;

 late  final FocusNode _nameFocusNode;

  late final FocusNode _emailFocusNode;

  late final FocusNode _passwordFocusNode;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailureState) {
          showSnackBar(context, state.errorMassage, Colors.red);
        }
        if (state is AuthLoginSuccessState) {
          showSnackBar(context, 'Login successfully', Colors.green);
          GoRouter.of(context).go(AppRouter.mainView);
        }
        
        if (state is AuthSignUpSuccessState) {
          showSnackBar(context, 'Sign up successfully', Colors.green);
          GoRouter.of(context).go(AppRouter.mainView);
        }
        
      },
      builder: (context, state) {
        AuthCubit cubit = context.watch<AuthCubit>();
        return state is AuthLoadingState? Center(
          child: CircularProgressIndicator(),
        ):Padding(
          padding: const EdgeInsets.only(bottom: 40.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                        ),
                        Text(
                          cubit.isLogin ? 'Login' : 'Signup',
                          style: Styles.textStyle38,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .1,
                        ),
                        FieldsSection(
                          formKey: formKey,
                          nameController: _nameController,
                          emailController: _emailController,
                          passwordController: _passwordController,
                          nameFocusNode: _nameFocusNode,
                          emailFocusNode: _emailFocusNode,
                          passwordFocusNode: _passwordFocusNode,
                        ),
                        const SizedBox(height: 32),
                        CustomButton(
                          title: cubit.isLogin ? 'LOGIN' : 'SIGNUP',
                          onTap: ()async {
                            if (formKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                             await cubit.submit(_emailController.text, _passwordController.text);
                              
                            }
                          },
                        ),
                        SizedBox(height: 10),
                        FormTypeSection(
                          isLogin: cubit.isLogin,
                          formKey: formKey,
                          nameController: _nameController,
                          emailController: _emailController,
                          passwordController: _passwordController,
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
            ],
          ),
        );
      },
    );
  }
}
