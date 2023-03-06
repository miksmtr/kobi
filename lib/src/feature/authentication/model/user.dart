import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';


part 'user.g.dart';
@Collection<User>('users')
@JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
)

class User {

  const User({
    required this.name,
    required this.lastname,
  });

  final String name;
  final String lastname;

  factory User.fromJson(Map<String,dynamic> json) => User(
    name: json['name'].toString(),
    lastname: json['lastname'].toString()
  );
  
  Map<String, dynamic> toJson() => {
    'name': name,
    'lastname': lastname
  };

  User clone() => User(
    name: name,
    lastname: lastname
  );


  User copyWith({
    String? name,
    String? lastname
  }) => User(
    name: name ?? this.name,
    lastname: lastname ?? this.lastname,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is User && name == other.name && lastname == other.lastname;

  @override
  int get hashCode => name.hashCode ^ lastname.hashCode;
}
