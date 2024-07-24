import 'package:bloc/bloc.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:doc/features/login/ui/manager/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> login({required LoginRequestBody loginRequestBody}) async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(loginRequestBody: loginRequestBody);
    result.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(LoginState.failure(errormessage: error.apiErrorModel.message));
      },
    );
  }
}
