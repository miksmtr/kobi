// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class PlatformUserCollectionReference
    implements
        PlatformUserQuery,
        FirestoreCollectionReference<PlatformUser, PlatformUserQuerySnapshot> {
  factory PlatformUserCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$PlatformUserCollectionReference;

  static PlatformUser fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return PlatformUser.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    PlatformUser value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<PlatformUser> get reference;

  @override
  PlatformUserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<PlatformUserDocumentReference> add(PlatformUser value);
}

class _$PlatformUserCollectionReference extends _$PlatformUserQuery
    implements PlatformUserCollectionReference {
  factory _$PlatformUserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$PlatformUserCollectionReference._(
      firestore.collection('platform_users').withConverter(
            fromFirestore: PlatformUserCollectionReference.fromFirestore,
            toFirestore: PlatformUserCollectionReference.toFirestore,
          ),
    );
  }

  _$PlatformUserCollectionReference._(
    CollectionReference<PlatformUser> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<PlatformUser> get reference =>
      super.reference as CollectionReference<PlatformUser>;

  @override
  PlatformUserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return PlatformUserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<PlatformUserDocumentReference> add(PlatformUser value) {
    return reference
        .add(value)
        .then((ref) => PlatformUserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$PlatformUserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class PlatformUserDocumentReference extends FirestoreDocumentReference<
    PlatformUser, PlatformUserDocumentSnapshot> {
  factory PlatformUserDocumentReference(
          DocumentReference<PlatformUser> reference) =
      _$PlatformUserDocumentReference;

  DocumentReference<PlatformUser> get reference;

  /// A reference to the [PlatformUserCollectionReference] containing this document.
  PlatformUserCollectionReference get parent {
    return _$PlatformUserCollectionReference(reference.firestore);
  }

  @override
  Stream<PlatformUserDocumentSnapshot> snapshots();

  @override
  Future<PlatformUserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String email,
    FieldValue emailFieldValue,
    String? name,
    FieldValue nameFieldValue,
    String? displayName,
    FieldValue displayNameFieldValue,
    DateTime? birthDay,
    FieldValue birthDayFieldValue,
    String? languge,
    FieldValue langugeFieldValue,
    String? theme,
    FieldValue themeFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? profilePictureUrl,
    FieldValue profilePictureUrlFieldValue,
    bool profileCompleted,
    FieldValue profileCompletedFieldValue,
    bool receiveChannelEmailIsActive,
    FieldValue receiveChannelEmailIsActiveFieldValue,
    bool receiveChannelNotificationActive,
    FieldValue receiveChannelNotificationActiveFieldValue,
    bool receiveChannelSMSActive,
    FieldValue receiveChannelSMSActiveFieldValue,
    bool emailVerified,
    FieldValue emailVerifiedFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String email,
    FieldValue emailFieldValue,
    String? name,
    FieldValue nameFieldValue,
    String? displayName,
    FieldValue displayNameFieldValue,
    DateTime? birthDay,
    FieldValue birthDayFieldValue,
    String? languge,
    FieldValue langugeFieldValue,
    String? theme,
    FieldValue themeFieldValue,
    String? phoneNumber,
    FieldValue phoneNumberFieldValue,
    String? profilePictureUrl,
    FieldValue profilePictureUrlFieldValue,
    bool profileCompleted,
    FieldValue profileCompletedFieldValue,
    bool receiveChannelEmailIsActive,
    FieldValue receiveChannelEmailIsActiveFieldValue,
    bool receiveChannelNotificationActive,
    FieldValue receiveChannelNotificationActiveFieldValue,
    bool receiveChannelSMSActive,
    FieldValue receiveChannelSMSActiveFieldValue,
    bool emailVerified,
    FieldValue emailVerifiedFieldValue,
  });
}

class _$PlatformUserDocumentReference extends FirestoreDocumentReference<
    PlatformUser,
    PlatformUserDocumentSnapshot> implements PlatformUserDocumentReference {
  _$PlatformUserDocumentReference(this.reference);

  @override
  final DocumentReference<PlatformUser> reference;

  /// A reference to the [PlatformUserCollectionReference] containing this document.
  PlatformUserCollectionReference get parent {
    return _$PlatformUserCollectionReference(reference.firestore);
  }

  @override
  Stream<PlatformUserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(PlatformUserDocumentSnapshot._);
  }

  @override
  Future<PlatformUserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(PlatformUserDocumentSnapshot._);
  }

  @override
  Future<PlatformUserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(PlatformUserDocumentSnapshot._);
  }

  Future<void> update({
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? displayName = _sentinel,
    FieldValue? displayNameFieldValue,
    Object? birthDay = _sentinel,
    FieldValue? birthDayFieldValue,
    Object? languge = _sentinel,
    FieldValue? langugeFieldValue,
    Object? theme = _sentinel,
    FieldValue? themeFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? profilePictureUrl = _sentinel,
    FieldValue? profilePictureUrlFieldValue,
    Object? profileCompleted = _sentinel,
    FieldValue? profileCompletedFieldValue,
    Object? receiveChannelEmailIsActive = _sentinel,
    FieldValue? receiveChannelEmailIsActiveFieldValue,
    Object? receiveChannelNotificationActive = _sentinel,
    FieldValue? receiveChannelNotificationActiveFieldValue,
    Object? receiveChannelSMSActive = _sentinel,
    FieldValue? receiveChannelSMSActiveFieldValue,
    Object? emailVerified = _sentinel,
    FieldValue? emailVerifiedFieldValue,
  }) async {
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      displayName == _sentinel || displayNameFieldValue == null,
      "Cannot specify both displayName and displayNameFieldValue",
    );
    assert(
      birthDay == _sentinel || birthDayFieldValue == null,
      "Cannot specify both birthDay and birthDayFieldValue",
    );
    assert(
      languge == _sentinel || langugeFieldValue == null,
      "Cannot specify both languge and langugeFieldValue",
    );
    assert(
      theme == _sentinel || themeFieldValue == null,
      "Cannot specify both theme and themeFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      profilePictureUrl == _sentinel || profilePictureUrlFieldValue == null,
      "Cannot specify both profilePictureUrl and profilePictureUrlFieldValue",
    );
    assert(
      profileCompleted == _sentinel || profileCompletedFieldValue == null,
      "Cannot specify both profileCompleted and profileCompletedFieldValue",
    );
    assert(
      receiveChannelEmailIsActive == _sentinel ||
          receiveChannelEmailIsActiveFieldValue == null,
      "Cannot specify both receiveChannelEmailIsActive and receiveChannelEmailIsActiveFieldValue",
    );
    assert(
      receiveChannelNotificationActive == _sentinel ||
          receiveChannelNotificationActiveFieldValue == null,
      "Cannot specify both receiveChannelNotificationActive and receiveChannelNotificationActiveFieldValue",
    );
    assert(
      receiveChannelSMSActive == _sentinel ||
          receiveChannelSMSActiveFieldValue == null,
      "Cannot specify both receiveChannelSMSActive and receiveChannelSMSActiveFieldValue",
    );
    assert(
      emailVerified == _sentinel || emailVerifiedFieldValue == null,
      "Cannot specify both emailVerified and emailVerifiedFieldValue",
    );
    final json = {
      if (email != _sentinel) _$PlatformUserFieldMap['email']!: email as String,
      if (emailFieldValue != null)
        _$PlatformUserFieldMap['email']!: emailFieldValue,
      if (name != _sentinel) _$PlatformUserFieldMap['name']!: name as String?,
      if (nameFieldValue != null)
        _$PlatformUserFieldMap['name']!: nameFieldValue,
      if (displayName != _sentinel)
        _$PlatformUserFieldMap['displayName']!: displayName as String?,
      if (displayNameFieldValue != null)
        _$PlatformUserFieldMap['displayName']!: displayNameFieldValue,
      if (birthDay != _sentinel)
        _$PlatformUserFieldMap['birthDay']!: birthDay as DateTime?,
      if (birthDayFieldValue != null)
        _$PlatformUserFieldMap['birthDay']!: birthDayFieldValue,
      if (languge != _sentinel)
        _$PlatformUserFieldMap['languge']!: languge as String?,
      if (langugeFieldValue != null)
        _$PlatformUserFieldMap['languge']!: langugeFieldValue,
      if (theme != _sentinel)
        _$PlatformUserFieldMap['theme']!: theme as String?,
      if (themeFieldValue != null)
        _$PlatformUserFieldMap['theme']!: themeFieldValue,
      if (phoneNumber != _sentinel)
        _$PlatformUserFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$PlatformUserFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (profilePictureUrl != _sentinel)
        _$PlatformUserFieldMap['profilePictureUrl']!:
            profilePictureUrl as String?,
      if (profilePictureUrlFieldValue != null)
        _$PlatformUserFieldMap['profilePictureUrl']!:
            profilePictureUrlFieldValue,
      if (profileCompleted != _sentinel)
        _$PlatformUserFieldMap['profileCompleted']!: profileCompleted as bool,
      if (profileCompletedFieldValue != null)
        _$PlatformUserFieldMap['profileCompleted']!: profileCompletedFieldValue,
      if (receiveChannelEmailIsActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!:
            receiveChannelEmailIsActive as bool,
      if (receiveChannelEmailIsActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!:
            receiveChannelEmailIsActiveFieldValue,
      if (receiveChannelNotificationActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!:
            receiveChannelNotificationActive as bool,
      if (receiveChannelNotificationActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!:
            receiveChannelNotificationActiveFieldValue,
      if (receiveChannelSMSActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelSMSActive']!:
            receiveChannelSMSActive as bool,
      if (receiveChannelSMSActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelSMSActive']!:
            receiveChannelSMSActiveFieldValue,
      if (emailVerified != _sentinel)
        _$PlatformUserFieldMap['emailVerified']!: emailVerified as bool,
      if (emailVerifiedFieldValue != null)
        _$PlatformUserFieldMap['emailVerified']!: emailVerifiedFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? displayName = _sentinel,
    FieldValue? displayNameFieldValue,
    Object? birthDay = _sentinel,
    FieldValue? birthDayFieldValue,
    Object? languge = _sentinel,
    FieldValue? langugeFieldValue,
    Object? theme = _sentinel,
    FieldValue? themeFieldValue,
    Object? phoneNumber = _sentinel,
    FieldValue? phoneNumberFieldValue,
    Object? profilePictureUrl = _sentinel,
    FieldValue? profilePictureUrlFieldValue,
    Object? profileCompleted = _sentinel,
    FieldValue? profileCompletedFieldValue,
    Object? receiveChannelEmailIsActive = _sentinel,
    FieldValue? receiveChannelEmailIsActiveFieldValue,
    Object? receiveChannelNotificationActive = _sentinel,
    FieldValue? receiveChannelNotificationActiveFieldValue,
    Object? receiveChannelSMSActive = _sentinel,
    FieldValue? receiveChannelSMSActiveFieldValue,
    Object? emailVerified = _sentinel,
    FieldValue? emailVerifiedFieldValue,
  }) {
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      displayName == _sentinel || displayNameFieldValue == null,
      "Cannot specify both displayName and displayNameFieldValue",
    );
    assert(
      birthDay == _sentinel || birthDayFieldValue == null,
      "Cannot specify both birthDay and birthDayFieldValue",
    );
    assert(
      languge == _sentinel || langugeFieldValue == null,
      "Cannot specify both languge and langugeFieldValue",
    );
    assert(
      theme == _sentinel || themeFieldValue == null,
      "Cannot specify both theme and themeFieldValue",
    );
    assert(
      phoneNumber == _sentinel || phoneNumberFieldValue == null,
      "Cannot specify both phoneNumber and phoneNumberFieldValue",
    );
    assert(
      profilePictureUrl == _sentinel || profilePictureUrlFieldValue == null,
      "Cannot specify both profilePictureUrl and profilePictureUrlFieldValue",
    );
    assert(
      profileCompleted == _sentinel || profileCompletedFieldValue == null,
      "Cannot specify both profileCompleted and profileCompletedFieldValue",
    );
    assert(
      receiveChannelEmailIsActive == _sentinel ||
          receiveChannelEmailIsActiveFieldValue == null,
      "Cannot specify both receiveChannelEmailIsActive and receiveChannelEmailIsActiveFieldValue",
    );
    assert(
      receiveChannelNotificationActive == _sentinel ||
          receiveChannelNotificationActiveFieldValue == null,
      "Cannot specify both receiveChannelNotificationActive and receiveChannelNotificationActiveFieldValue",
    );
    assert(
      receiveChannelSMSActive == _sentinel ||
          receiveChannelSMSActiveFieldValue == null,
      "Cannot specify both receiveChannelSMSActive and receiveChannelSMSActiveFieldValue",
    );
    assert(
      emailVerified == _sentinel || emailVerifiedFieldValue == null,
      "Cannot specify both emailVerified and emailVerifiedFieldValue",
    );
    final json = {
      if (email != _sentinel) _$PlatformUserFieldMap['email']!: email as String,
      if (emailFieldValue != null)
        _$PlatformUserFieldMap['email']!: emailFieldValue,
      if (name != _sentinel) _$PlatformUserFieldMap['name']!: name as String?,
      if (nameFieldValue != null)
        _$PlatformUserFieldMap['name']!: nameFieldValue,
      if (displayName != _sentinel)
        _$PlatformUserFieldMap['displayName']!: displayName as String?,
      if (displayNameFieldValue != null)
        _$PlatformUserFieldMap['displayName']!: displayNameFieldValue,
      if (birthDay != _sentinel)
        _$PlatformUserFieldMap['birthDay']!: birthDay as DateTime?,
      if (birthDayFieldValue != null)
        _$PlatformUserFieldMap['birthDay']!: birthDayFieldValue,
      if (languge != _sentinel)
        _$PlatformUserFieldMap['languge']!: languge as String?,
      if (langugeFieldValue != null)
        _$PlatformUserFieldMap['languge']!: langugeFieldValue,
      if (theme != _sentinel)
        _$PlatformUserFieldMap['theme']!: theme as String?,
      if (themeFieldValue != null)
        _$PlatformUserFieldMap['theme']!: themeFieldValue,
      if (phoneNumber != _sentinel)
        _$PlatformUserFieldMap['phoneNumber']!: phoneNumber as String?,
      if (phoneNumberFieldValue != null)
        _$PlatformUserFieldMap['phoneNumber']!: phoneNumberFieldValue,
      if (profilePictureUrl != _sentinel)
        _$PlatformUserFieldMap['profilePictureUrl']!:
            profilePictureUrl as String?,
      if (profilePictureUrlFieldValue != null)
        _$PlatformUserFieldMap['profilePictureUrl']!:
            profilePictureUrlFieldValue,
      if (profileCompleted != _sentinel)
        _$PlatformUserFieldMap['profileCompleted']!: profileCompleted as bool,
      if (profileCompletedFieldValue != null)
        _$PlatformUserFieldMap['profileCompleted']!: profileCompletedFieldValue,
      if (receiveChannelEmailIsActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!:
            receiveChannelEmailIsActive as bool,
      if (receiveChannelEmailIsActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!:
            receiveChannelEmailIsActiveFieldValue,
      if (receiveChannelNotificationActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!:
            receiveChannelNotificationActive as bool,
      if (receiveChannelNotificationActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!:
            receiveChannelNotificationActiveFieldValue,
      if (receiveChannelSMSActive != _sentinel)
        _$PlatformUserFieldMap['receiveChannelSMSActive']!:
            receiveChannelSMSActive as bool,
      if (receiveChannelSMSActiveFieldValue != null)
        _$PlatformUserFieldMap['receiveChannelSMSActive']!:
            receiveChannelSMSActiveFieldValue,
      if (emailVerified != _sentinel)
        _$PlatformUserFieldMap['emailVerified']!: emailVerified as bool,
      if (emailVerifiedFieldValue != null)
        _$PlatformUserFieldMap['emailVerified']!: emailVerifiedFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is PlatformUserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class PlatformUserQuery
    implements QueryReference<PlatformUser, PlatformUserQuerySnapshot> {
  @override
  PlatformUserQuery limit(int limit);

  @override
  PlatformUserQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  PlatformUserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  PlatformUserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  PlatformUserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PlatformUserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  PlatformUserQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery whereDisplayName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery whereBirthDay({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  });
  PlatformUserQuery whereLanguge({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery whereTheme({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery whereProfilePictureUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  PlatformUserQuery whereProfileCompleted({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  PlatformUserQuery whereReceiveChannelEmailIsActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  PlatformUserQuery whereReceiveChannelNotificationActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  PlatformUserQuery whereReceiveChannelSMSActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  PlatformUserQuery whereEmailVerified({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });

  PlatformUserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByDisplayName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByBirthDay({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByLanguge({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByTheme({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByPhoneNumber({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByProfilePictureUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByProfileCompleted({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByReceiveChannelEmailIsActive({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByReceiveChannelNotificationActive({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByReceiveChannelSMSActive({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });

  PlatformUserQuery orderByEmailVerified({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  });
}

class _$PlatformUserQuery
    extends QueryReference<PlatformUser, PlatformUserQuerySnapshot>
    implements PlatformUserQuery {
  _$PlatformUserQuery(
    this._collection, {
    required Query<PlatformUser> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<PlatformUserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(PlatformUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<PlatformUserQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(PlatformUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  PlatformUserQuery limit(int limit) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  PlatformUserQuery limitToLast(int limit) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['email']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['name']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereDisplayName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['displayName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereBirthDay({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    bool? isNull,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['birthDay']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereLanguge({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['languge']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereTheme({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['theme']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['phoneNumber']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereProfilePictureUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['profilePictureUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereProfileCompleted({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['profileCompleted']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereReceiveChannelEmailIsActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereReceiveChannelNotificationActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereReceiveChannelSMSActive({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['receiveChannelSMSActive']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery whereEmailVerified({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$PlatformUserFieldMap['emailVerified']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  PlatformUserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PlatformUserFieldMap['email']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PlatformUserFieldMap['name']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByDisplayName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['displayName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByBirthDay({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PlatformUserFieldMap['birthDay']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByLanguge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PlatformUserFieldMap['languge']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByTheme({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$PlatformUserFieldMap['theme']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['phoneNumber']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByProfilePictureUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['profilePictureUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByProfileCompleted({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['profileCompleted']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByReceiveChannelEmailIsActive({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['receiveChannelEmailIsActive']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByReceiveChannelNotificationActive({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['receiveChannelNotificationActive']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByReceiveChannelSMSActive({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['receiveChannelSMSActive']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  PlatformUserQuery orderByEmailVerified({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    PlatformUserDocumentSnapshot? startAtDocument,
    PlatformUserDocumentSnapshot? endAtDocument,
    PlatformUserDocumentSnapshot? endBeforeDocument,
    PlatformUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$PlatformUserFieldMap['emailVerified']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$PlatformUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$PlatformUserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class PlatformUserDocumentSnapshot
    extends FirestoreDocumentSnapshot<PlatformUser> {
  PlatformUserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<PlatformUser> snapshot;

  @override
  PlatformUserDocumentReference get reference {
    return PlatformUserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final PlatformUser? data;
}

class PlatformUserQuerySnapshot extends FirestoreQuerySnapshot<PlatformUser,
    PlatformUserQueryDocumentSnapshot> {
  PlatformUserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory PlatformUserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<PlatformUser> snapshot,
  ) {
    final docs =
        snapshot.docs.map(PlatformUserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        PlatformUserDocumentSnapshot._,
      );
    }).toList();

    return PlatformUserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<PlatformUserDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    PlatformUserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<PlatformUserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<PlatformUser> snapshot;

  @override
  final List<PlatformUserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<PlatformUserDocumentSnapshot>> docChanges;
}

class PlatformUserQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<PlatformUser>
    implements PlatformUserDocumentSnapshot {
  PlatformUserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<PlatformUser> snapshot;

  @override
  final PlatformUser data;

  @override
  PlatformUserDocumentReference get reference {
    return PlatformUserDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformUser _$PlatformUserFromJson(Map<String, dynamic> json) => PlatformUser(
      json['id'] as String,
      json['email'] as String,
      birthDay: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['birthDay'], const FirestoreDateTimeConverter().fromJson),
      languge: json['languge'] as String? ?? "tr",
      name: json['name'] as String?,
      theme: json['theme'] as String? ?? "dark",
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] as String?,
      profileCompleted: json['profileCompleted'] as bool? ?? false,
      profilePictureUrl: json['profilePictureUrl'] as String?,
      receiveChannelEmailIsActive:
          json['receiveChannelEmailIsActive'] as bool? ?? false,
      receiveChannelNotificationActive:
          json['receiveChannelNotificationActive'] as bool? ?? false,
      receiveChannelSMSActive:
          json['receiveChannelSMSActive'] as bool? ?? false,
      emailVerified: json['emailVerified'] as bool? ?? false,
      displayName: json['displayName'] as String?,
    );

const _$PlatformUserFieldMap = <String, String>{
  'id': 'id',
  'email': 'email',
  'name': 'name',
  'displayName': 'displayName',
  'birthDay': 'birthDay',
  'languge': 'languge',
  'theme': 'theme',
  'phoneNumber': 'phoneNumber',
  'profilePictureUrl': 'profilePictureUrl',
  'profileCompleted': 'profileCompleted',
  'receiveChannelEmailIsActive': 'receiveChannelEmailIsActive',
  'receiveChannelNotificationActive': 'receiveChannelNotificationActive',
  'receiveChannelSMSActive': 'receiveChannelSMSActive',
  'emailVerified': 'emailVerified',
  'company': 'company',
};

Map<String, dynamic> _$PlatformUserToJson(PlatformUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'displayName': instance.displayName,
      'birthDay': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.birthDay, const FirestoreDateTimeConverter().toJson),
      'languge': instance.languge,
      'theme': instance.theme,
      'phoneNumber': instance.phoneNumber,
      'profilePictureUrl': instance.profilePictureUrl,
      'profileCompleted': instance.profileCompleted,
      'receiveChannelEmailIsActive': instance.receiveChannelEmailIsActive,
      'receiveChannelNotificationActive':
          instance.receiveChannelNotificationActive,
      'receiveChannelSMSActive': instance.receiveChannelSMSActive,
      'emailVerified': instance.emailVerified,
      'company': instance.company?.toJson(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
