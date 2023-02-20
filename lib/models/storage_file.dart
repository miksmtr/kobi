import 'package:json_annotation/json_annotation.dart';

part 'storage_file.g.dart';

@JsonSerializable()
class StorageFile {
  StorageFile({
    required this.url,
    required this.path,
    this.mimeType,
    this.metadata, 
  });
  final String url;
  final String path;
  Map<String, String>? metadata;
  String? mimeType;
  factory StorageFile.fromJson(Map<String, dynamic> json) =>
      _$StorageFileFromJson(json);
  Map<String, dynamic> toJson() => _$StorageFileToJson(this);
}
