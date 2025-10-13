part of 'auth_cubit.dart';


sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class ChangePasswordVisibilityState extends AuthState {}
final class ChangeAuthFormTypeState extends AuthState {}
