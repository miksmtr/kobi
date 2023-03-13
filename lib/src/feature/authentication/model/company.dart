import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
part 'company.g.dart';
  
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);

@firestoreSerializable
class Company {
  Company(this.id,
      {this.name,
      this.area,
      this.city,
      this.naceCode,
      this.taxCenter,
      this.taxNumber});

  @Id()
  String id;
  String? name;
  int? taxNumber;
  String? taxCenter;
  String? naceCode;
  String? area;
  String? city;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}



