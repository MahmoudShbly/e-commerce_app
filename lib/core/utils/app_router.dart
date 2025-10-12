import 'package:ecommerce_app/features/auth/presentation/views/auth_view.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
      path: '/',
      builder: (context, state) =>const AuthView(),
     ),
    ],
  );
}