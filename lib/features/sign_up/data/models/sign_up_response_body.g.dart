// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponseBody _$SignUpResponseBodyFromJson(Map<String, dynamic> json) =>
    SignUpResponseBody(
      message: json['message'] as String,
      userData: UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$SignUpResponseBodyToJson(SignUpResponseBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.userData,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      email: json['email'] as String,
      phone: (json['username'] as num).toInt(),
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'email': instance.email,
      'username': instance.phone,
    };
