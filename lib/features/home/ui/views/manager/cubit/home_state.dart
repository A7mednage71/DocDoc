
import 'package:doc/features/home/data/models/all_specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.success(AllspecializationResponseModel data) = Success<T>;
  const factory HomeState.failure({required String error}) = Failure;
}
