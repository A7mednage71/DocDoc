import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_body.g.dart';
@JsonSerializable()
class SignUpResponseBody {
  final String message;
  @JsonKey(name: "data")
  final UserData userData;
  final bool status;
  final int code;

  SignUpResponseBody(
      {required this.message,
      required this.userData,
      required this.status,
      required this.code});

  factory SignUpResponseBody.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  final String email;
  @JsonKey(name: "username")
  final int phone;

  UserData({required this.email, required this.phone});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
