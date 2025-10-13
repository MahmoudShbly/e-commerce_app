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
  AuthFormType authType = AuthFormType.login;
  void changeAuthFormType(){
    if(authType==AuthFormType.login){
      authType=AuthFormType.signup;
    }else {authType=AuthFormType.login;}
    emit(ChangeAuthFormTypeState());
  }
  bool get isLogin =>authType==AuthFormType.login;
}