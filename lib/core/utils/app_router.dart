import 'package:ecommerce_app/features/auth/presentation/views/auth_view.dart';
import 'package:ecommerce_app/features/main/presentation/views/main_view.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static const String mainView = '/mainView';
  static final router = GoRouter(
    routes: [
      GoRoute(
      path: '/',
      builder: (context, state) =>const AuthView(),
     ),
      GoRoute(
      path: mainView,
      builder: (context, state) =>const MainView(),
     ),
    ],
  );
}