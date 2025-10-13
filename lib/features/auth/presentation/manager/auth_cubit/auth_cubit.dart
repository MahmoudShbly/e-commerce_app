import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  bool isPasswordShow = false;
  void changePasswordVisibility() {
    isPasswordShow = !isPasswordShow;
    emit(ChangePasswordVisibilityState());
}
  AuthFormState authType = AuthFormState.login;
  void changeAuthFormType(){
    if(authType==AuthFormState.login){
      authType=AuthFormState.signup;
    }else {authType=AuthFormState.login;}
    emit(ChangeAuthFormTypeState());
  }
  bool get isLogin =>authType==AuthFormState.login;
}