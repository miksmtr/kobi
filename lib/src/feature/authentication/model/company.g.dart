// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      json['id'] as String,
      name: json['name'] as String?,
      area: json['area'] as String?,
      city: json['city'] as String?,
      naceCode: json['naceCode'] as String?,
      taxCenter: json['taxCenter'] as String?,
      taxNumber: json['taxNumber'] as int?,
    );

const _$CompanyFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'taxNumber': 'taxNumber',
  'taxCenter': 'taxCenter',
  'naceCode': 'naceCode',
  'area': 'area',
  'city': 'city',
};

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'taxNumber': instance.taxNumber,
      'taxCenter': instance.taxCenter,
      'naceCode': instance.naceCode,
      'area': instance.area,
      'city': instance.city,
    };
