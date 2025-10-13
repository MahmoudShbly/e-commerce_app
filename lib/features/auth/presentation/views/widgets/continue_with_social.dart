import 'package:ecommerce_app/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class ContinueWithSocialSection extends StatelessWidget {
  const ContinueWithSocialSection({super.key,required this.isLogin});
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text (
                isLogin
                    ? 'Or login with social account'
                    : 'Or sign up with social account',
              ),
             const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(MyAssets.google),
                  Image.asset(MyAssets.facebook),
                ],
              ),
              
      ],
    );
  }
}
