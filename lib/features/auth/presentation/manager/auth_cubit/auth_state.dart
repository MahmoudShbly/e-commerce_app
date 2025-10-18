part of 'auth_cubit.dart';


sealed class AuthState {}
//ui
final class AuthInitial extends AuthState {}
final class ChangePasswordVisibilityState extends AuthState {}
final class ChangeAuthFormTypeState extends AuthState {}

// firebase auth
final class AuthLoadingState extends AuthState{}
final class AuthLoginSuccessState extends AuthState{}
final class AuthSignUpSuccessState extends AuthState{}
final class AuthFailureState extends AuthState{final String errorMassage;

  AuthFailureState({required this.errorMassage});}