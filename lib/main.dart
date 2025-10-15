import 'package:ecommerce_app/core/utils/app_router.dart';
import 'package:ecommerce_app/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:ecommerce_app/features/home/presentation/manager/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (context) => AuthCubit()),
         BlocProvider(create: (context) => HomeCubit()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor:const Color(0xffF9F9F9),
          primaryColor: const Color(0xffDB3022)
        ),
        routerConfig: AppRouter.router,
        title: 'E-Commerce App',
      
      ),
    );
  }
}
