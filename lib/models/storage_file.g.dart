// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageFile _$StorageFileFromJson(Map<String, dynamic> json) => StorageFile(
      url: json['url'] as String,
      path: json['path'] as String,
      mimeType: json['mimeType'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$StorageFileToJson(StorageFile instance) =>
    <String, dynamic>{
      'url': instance.url,
      'path': instance.path,
      'metadata': instance.metadata,
      'mimeType': instance.mimeType,
    };
