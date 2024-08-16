import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  Future<void> getAllSpecialization() async {
    emit(const HomeState.loading());
    var response = await _homeRepo.getAllSpecialization();
    response.when(
      success: (data) {
        emit(HomeState.success(data));
      },
      failure: (error) {
        emit(HomeState.failure(error: error.apiErrorModel.message));
      },
    );
  }
}
