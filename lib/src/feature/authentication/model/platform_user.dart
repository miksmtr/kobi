import 'package:firebase_auth/firebase_auth.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:kobi/src/feature/authentication/model/company.dart';

// This doesn't eist yet...! See "Next Steps"
part 'platform_user.g.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);
@Collection<PlatformUser>('platform_users')
@firestoreSerializable
class PlatformUser {
  PlatformUser(this.id, this.email,
      {this.birthDay,
      this.languge = "tr",
      this.name,
      this.theme = "dark",
      this.company,
      this.phoneNumber,
      this.profileCompleted = false,
      this.profilePictureUrl,
      this.receiveChannelEmailIsActive = false,
      this.receiveChannelNotificationActive = false,
      this.receiveChannelSMSActive = false,
      this.emailVerified = false,
      this.displayName});

  String id;
  String email;
  String? name;
  String? displayName;
  DateTime? birthDay;
  String? languge;
  String? theme;
  String? phoneNumber;
  String? profilePictureUrl;
  bool profileCompleted;
  bool receiveChannelEmailIsActive;
  bool receiveChannelNotificationActive;
  bool receiveChannelSMSActive;
  bool emailVerified;
  Company? company;

  factory PlatformUser.fromJson(Map<String, dynamic> json) =>
      _$PlatformUserFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformUserToJson(this);
}

