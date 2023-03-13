import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../model/company.dart';
import '../model/platform_user.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class CAuthProvider extends ChangeNotifier {
  bool get loadingState => _isLoading;
  bool _isLoading = false;

  PlatformUser? get platformUser => _platformUser;
  PlatformUser? _platformUser;

  dynamic error;
  final PlatformUserCollectionReference _platformUserCollectionReference =
      PlatformUserCollectionReference();

  changeLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  showError(BuildContext context) {
    showDialog(
        context: context,
        builder: (c) {
          return Center(
            child: Text(error),
          );
        });
  }

  Future getPlatformUser() async {
    User? _user = FirebaseAuth.instance.currentUser;
    await _platformUserCollectionReference
        .whereEmail(isEqualTo: _user!.email)
        .get()
        .then((value) {
          _platformUser = value.docs.first.data;
          notifyListeners();
        })
        .onError((error, stackTrace) => changeLoading(false))
        .catchError((error) {
          changeLoading(false);
        });
  }

  Future createUserForFirestore(BuildContext context, User _user) async {
    changeLoading(true);
    PlatformUser user = PlatformUser(_user.uid, _user.email!);
    user.id = _user.uid;
    user.emailVerified = _user.emailVerified;
    user.displayName = _user.displayName;
    user.phoneNumber = _user.phoneNumber;
    user.profilePictureUrl = _user.photoURL;
    user.company = Company(_user.uid);
    _platformUserCollectionReference.add(user).then((value) async {
      log("user created $value");
      navigate(context, _user);
      changeLoading(false);
    }).catchError((error) {
      error = error;
      log("catchError to add user: $error");
      changeLoading(false);
      showError(context);
    }).onError((error, stackTrace) {
      error = error;
      log("onError Failed to add user: $error");
      changeLoading(false);
      showError(context);
    });
  }

  navigate(BuildContext context, User? firebaseUser) {
    if (firebaseUser != null) {
      if (firebaseUser.emailVerified) {
        context.pushReplacement('/panel');
      } else {
        context.pushReplacement("/panel/verify-email");
      }
    } else {
      error = "$firebaseUser is not exists";
      showError(context);
    }
  }
}
