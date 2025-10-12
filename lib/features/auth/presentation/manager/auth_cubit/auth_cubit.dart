import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  bool isPasswordShow = false;
  void changePasswordVisibility() {
    isPasswordShow = !isPasswordShow;
    emit(ChangePasswordVisibilityState());
}
}