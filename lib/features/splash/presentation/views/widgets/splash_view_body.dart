import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  User? userState = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text('your Logo'),
    );
  }
  
  void navigateToNextScreen() {
    final router = GoRouter.of(context);
    Future.delayed(const Duration(seconds: 3), () {
      if (userState != null) {
        router.go(AppRouter.mainView);
      } else {
        router.go(AppRouter.authView);
      }
  });

}}