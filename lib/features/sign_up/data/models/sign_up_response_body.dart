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
  final String token;
  @JsonKey(name: "username")
  final String userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
