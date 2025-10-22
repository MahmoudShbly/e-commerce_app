import 'package:ecommerce_app/features/auth/presentation/views/auth_view.dart';
import 'package:ecommerce_app/features/home/data/models/product_model.dart';
import 'package:ecommerce_app/features/home/presentation/views/product_details_view.dart';
import 'package:ecommerce_app/features/main/presentation/views/main_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String mainView = '/mainView';
  static const String authView = '/authView';
  static const String detailsView = '/detailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: mainView, builder: (context, state) => const MainView()),
      GoRoute(path: authView, builder: (context, state) => const AuthView()),
      GoRoute(
        path: detailsView,
        builder: (context, state) {
          final product = state.extra as ProductModel;
          return ProductDetailsView(product: product);
        },
      ),
    ],
  );
}
