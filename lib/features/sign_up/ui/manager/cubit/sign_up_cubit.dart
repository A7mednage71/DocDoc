import 'package:dio/dio.dart';
import 'package:doc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  Future<void> signUp({required SignUpRequestBody signUpRequestBody}) async {
    emit(const SignUpState.loading());
    final result = await _signUpRepo.signUp(
        signUpRequestBody: FormData.fromMap(signUpRequestBody.toJson()));
    result.when(
      success: (data) {
        emit(SignUpState.success(data));
      },
      failure: (error) {
        emit(SignUpState.failure(errormessage: error.apiErrorModel.message));
      },
    );
  }
}
