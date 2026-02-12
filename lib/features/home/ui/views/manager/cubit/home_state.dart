import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  // specialization
  const factory HomeState.specializationInitial() = _SpecializationInitial;
  const factory HomeState.specializationloading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(
          List<SpecializationItem?>? allSpecializationData) =
      SpecializationSuccess<T>;
  const factory HomeState.specializationFailure({required String error}) =
      SpecializationFailure;

  // doctors
  const factory HomeState.doctorsSuccess(List<DoctorModel?>? allDoctorData) =
      DoctorsSuccess<T>;
  const factory HomeState.doctorsFailure({required String error}) =
      DoctorsFailure;
}
