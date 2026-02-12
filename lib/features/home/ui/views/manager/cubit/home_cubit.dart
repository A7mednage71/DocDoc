import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:doc/features/home/data/repos/home_repo.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.specializationInitial());

  List<SpecializationItem>? specializationList = [];

  Future<void> getAllSpecialization() async {
    emit(const HomeState.specializationloading());
    var response = await _homeRepo.getAllSpecialization();
    response.when(
      success: (data) {
        specializationList = data.allSpecializationData ?? [];

        getDoctorsList(specializationId: specializationList?[0].id);

        emit(HomeState.specializationSuccess(specializationList));
      },
      failure: (error) {
        emit(HomeState.specializationFailure(
            error: error.apiErrorModel.message));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<DoctorModel?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId: specializationId);
    if (doctorsList != null && doctorsList.isNotEmpty) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(const HomeState.doctorsFailure(error: "data not found"));
    }
  }

  List<DoctorModel?>? getDoctorsListBySpecializationId(
      {required int? specializationId}) {
    return specializationList
        ?.firstWhere((element) => element.id == specializationId)
        .doctors;
  }
}
