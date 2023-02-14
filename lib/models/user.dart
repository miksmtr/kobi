import 'package:equatable/equatable.dart';
import 'package:kobi/models/user.dart';

/// {@template user}
/// User description
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({ 
    this.lastName,
    required this.age,
    required this.isHappy,
    required this.favouriteNumber,
    required this.nicknames,
    required this.countriesVisited,
    required this.friends,
  });

    /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> json) => User(
        lastName: json['lastName'] as String?,
        age: json['age'] as int,
        isHappy: json['isHappy'] as bool,
        favouriteNumber: json['favouriteNumber'] as int,
        nicknames: json['nicknames'] as List<String>,
        countriesVisited: json['countriesVisited'] as List<String?>,
        friends: (json['friends'] as List<dynamic>).map((dynamic e) => User.fromJson(e as Map<String, dynamic>)).toList(),
      );

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
  Map<String, dynamic> toJson() => <String, dynamic>{ 
        'lastName': lastName,
        'age': age,
        'isHappy': isHappy,
        'favouriteNumber': favouriteNumber,
        'nicknames': nicknames,
        'countriesVisited': countriesVisited,
        'friends': friends,
      };
}
