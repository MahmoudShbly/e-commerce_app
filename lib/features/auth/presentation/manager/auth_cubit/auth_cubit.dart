import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepoImpl) : super(AuthInitial());
  final AuthRepoImpl  _authRepoImpl;
  bool isPasswordShow = false;
  void changePasswordVisibility() {
    isPasswordShow = !isPasswordShow;
    emit(ChangePasswordVisibilityState());
  }

  AuthFormType authType = AuthFormType.login;
  void changeAuthFormType() {
    if (authType == AuthFormType.login) {
      authType = AuthFormType.signup;
    } else {
      authType = AuthFormType.login;
    }
    emit(ChangeAuthFormTypeState());
  }

  bool get isLogin => authType == AuthFormType.login;

 Future<void> submit (String email ,String password)async{
  emit(AuthLoadingState());
  try {
    if (isLogin){
      await _authRepoImpl.loginWithEmailAndPassword(email, password);
      emit(AuthLoginSuccessState());
    }else {
     await _authRepoImpl.signUpWithEmailAndPassword(email, password);
     emit(AuthSignUpSuccessState());
    }
} catch (e) {
  emit(AuthFailureState(errorMassage: e.toString()));
}
 }

}
