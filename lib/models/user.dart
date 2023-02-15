import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kobi/models/user.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';


part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@JsonSerializable(explicitToJson: true)
class User  {
  /// {@macro user}
   User({ 
  this.lastName,
  required this.age,
  required this.isHappy,
  required this.favouriteNumber,
  required this.nicknames,
  required this.countriesVisited,
  required this.friends,
  });

    /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for lastName
  final String? lastName;

  /// A description for age
  final int age;

  /// A description for isHappy
  final bool isHappy;

  /// A description for favouriteNumber
  final int favouriteNumber;

  /// A description for nicknames
  final List<String> nicknames;

  /// A description for countriesVisited
  final List<String?> countriesVisited;

  /// A description for friends
  final List<User> friends;

    /// Creates a copy of the current User with property changes
  User copyWith({ 
    String? Function()? lastName,
    int? age,
    bool? isHappy,
    int? favouriteNumber,
    List<String>? nicknames,
    List<String?>? countriesVisited,
    List<User>? friends,
  }) {
    return User(
      lastName: lastName != null ? lastName() : this.lastName,
      age: age ?? this.age,
      isHappy: isHappy ?? this.isHappy,
      favouriteNumber: favouriteNumber ?? this.favouriteNumber,
      nicknames: nicknames ?? this.nicknames,
      countriesVisited: countriesVisited ?? this.countriesVisited,
      friends: friends ?? this.friends,
    );
  }


    @override
  List<Object?> get props => [
        lastName,
        age,
        isHappy,
        favouriteNumber,
        nicknames,
        countriesVisited,
        friends,
      ];

    /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
@Collection<User>('users')
final usersRef = UserCollectionReference();