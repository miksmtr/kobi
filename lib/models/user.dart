import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:kobi/models/storage_file.dart';

part 'user.g.dart';

@Collection<User>('users')
@JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
)
class User {
  User({
    this.profileImage,
    required this.name,
    required this.lastname,
    required this.brithday,
    required this.email,
  });

  final String name;
  final String lastname;
  final DateTime brithday;
  final String email;
  StorageFile? profileImage;
}
