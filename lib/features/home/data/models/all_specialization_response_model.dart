import 'package:json_annotation/json_annotation.dart';

part 'all_specialization_response_model.g.dart';

@JsonSerializable()
class AllspecializationResponseModel {
  String? message;
  @JsonKey(name: "data")
  List<SpecializationItem>? allSpecializationData;
  bool? status;
  int? code;

  AllspecializationResponseModel(
      {this.message, this.allSpecializationData, this.status, this.code});

  factory AllspecializationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllspecializationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AllspecializationResponseModelToJson(this);
}

@JsonSerializable()
class SpecializationItem {
  int? id;
  String? name;
  List<Doctors>? doctors;

  SpecializationItem({this.id, this.name, this.doctors});

  factory SpecializationItem.fromJson(Map<String, dynamic> json) =>
      _$SpecializationItemFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationItemToJson(this);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorsToJson(this);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Governrate? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class Governrate {
  int? id;
  String? name;

  Governrate({this.id, this.name});

  factory Governrate.fromJson(Map<String, dynamic> json) =>
      _$GovernrateFromJson(json);

  Map<String, dynamic> toJson() => _$GovernrateToJson(this);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);

  Map<String, dynamic> toJson() => _$SpecializationToJson(this);
}
