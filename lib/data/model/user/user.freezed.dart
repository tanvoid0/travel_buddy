// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String name,
      required String image,
      required String address,
      required String type,
      required Rating rating}) {
    return _User(
      id: id,
      name: name,
      image: image,
      address: address,
      type: type,
      rating: rating,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String image,
      String address,
      String type,
      Rating rating});

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }

  @override
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String image,
      String address,
      String type,
      Rating rating});

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? address = freezed,
    Object? type = freezed,
    Object? rating = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as Rating,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.name,
      required this.image,
      required this.address,
      required this.type,
      required this.rating});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String address;
  @override
  final String type;
  @override
  final Rating rating;

  @override
  String toString() {
    return 'User(id: $id, name: $name, image: $image, address: $address, type: $type, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String id,
      required String name,
      required String image,
      required String address,
      required String type,
      required Rating rating}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  Rating get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
class _$RatingTearOff {
  const _$RatingTearOff();

  _Rating call(
      {double traveller = 0,
      double guide = 0,
      double driver = 0,
      double host = 0}) {
    return _Rating(
      traveller: traveller,
      guide: guide,
      driver: driver,
      host: host,
    );
  }

  Rating fromJson(Map<String, Object> json) {
    return Rating.fromJson(json);
  }
}

/// @nodoc
const $Rating = _$RatingTearOff();

/// @nodoc
mixin _$Rating {
  double get traveller => throw _privateConstructorUsedError;
  double get guide => throw _privateConstructorUsedError;
  double get driver => throw _privateConstructorUsedError;
  double get host => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res>;
  $Res call({double traveller, double guide, double driver, double host});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res> implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  final Rating _value;
  // ignore: unused_field
  final $Res Function(Rating) _then;

  @override
  $Res call({
    Object? traveller = freezed,
    Object? guide = freezed,
    Object? driver = freezed,
    Object? host = freezed,
  }) {
    return _then(_value.copyWith(
      traveller: traveller == freezed
          ? _value.traveller
          : traveller // ignore: cast_nullable_to_non_nullable
              as double,
      guide: guide == freezed
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as double,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as double,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$RatingCopyWith(_Rating value, $Res Function(_Rating) then) =
      __$RatingCopyWithImpl<$Res>;
  @override
  $Res call({double traveller, double guide, double driver, double host});
}

/// @nodoc
class __$RatingCopyWithImpl<$Res> extends _$RatingCopyWithImpl<$Res>
    implements _$RatingCopyWith<$Res> {
  __$RatingCopyWithImpl(_Rating _value, $Res Function(_Rating) _then)
      : super(_value, (v) => _then(v as _Rating));

  @override
  _Rating get _value => super._value as _Rating;

  @override
  $Res call({
    Object? traveller = freezed,
    Object? guide = freezed,
    Object? driver = freezed,
    Object? host = freezed,
  }) {
    return _then(_Rating(
      traveller: traveller == freezed
          ? _value.traveller
          : traveller // ignore: cast_nullable_to_non_nullable
              as double,
      guide: guide == freezed
          ? _value.guide
          : guide // ignore: cast_nullable_to_non_nullable
              as double,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as double,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating(
      {this.traveller = 0, this.guide = 0, this.driver = 0, this.host = 0});

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final double traveller;
  @JsonKey(defaultValue: 0)
  @override
  final double guide;
  @JsonKey(defaultValue: 0)
  @override
  final double driver;
  @JsonKey(defaultValue: 0)
  @override
  final double host;

  @override
  String toString() {
    return 'Rating(traveller: $traveller, guide: $guide, driver: $driver, host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rating &&
            (identical(other.traveller, traveller) ||
                const DeepCollectionEquality()
                    .equals(other.traveller, traveller)) &&
            (identical(other.guide, guide) ||
                const DeepCollectionEquality().equals(other.guide, guide)) &&
            (identical(other.driver, driver) ||
                const DeepCollectionEquality().equals(other.driver, driver)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(traveller) ^
      const DeepCollectionEquality().hash(guide) ^
      const DeepCollectionEquality().hash(driver) ^
      const DeepCollectionEquality().hash(host);

  @JsonKey(ignore: true)
  @override
  _$RatingCopyWith<_Rating> get copyWith =>
      __$RatingCopyWithImpl<_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(this);
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {double traveller, double guide, double driver, double host}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  double get traveller => throw _privateConstructorUsedError;
  @override
  double get guide => throw _privateConstructorUsedError;
  @override
  double get driver => throw _privateConstructorUsedError;
  @override
  double get host => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RatingCopyWith<_Rating> get copyWith => throw _privateConstructorUsedError;
}
