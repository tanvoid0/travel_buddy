// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'accommodation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Accommodation _$AccommodationFromJson(Map<String, dynamic> json) {
  return _Accommodation.fromJson(json);
}

/// @nodoc
class _$AccommodationTearOff {
  const _$AccommodationTearOff();

  _Accommodation call(
      {required String id,
      required String title,
      required String location,
      required String owner,
      required String image,
      double? rating}) {
    return _Accommodation(
      id: id,
      title: title,
      location: location,
      owner: owner,
      image: image,
      rating: rating,
    );
  }

  Accommodation fromJson(Map<String, Object> json) {
    return Accommodation.fromJson(json);
  }
}

/// @nodoc
const $Accommodation = _$AccommodationTearOff();

/// @nodoc
mixin _$Accommodation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccommodationCopyWith<Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccommodationCopyWith<$Res> {
  factory $AccommodationCopyWith(
          Accommodation value, $Res Function(Accommodation) then) =
      _$AccommodationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String location,
      String owner,
      String image,
      double? rating});
}

/// @nodoc
class _$AccommodationCopyWithImpl<$Res>
    implements $AccommodationCopyWith<$Res> {
  _$AccommodationCopyWithImpl(this._value, this._then);

  final Accommodation _value;
  // ignore: unused_field
  final $Res Function(Accommodation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? owner = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$AccommodationCopyWith<$Res>
    implements $AccommodationCopyWith<$Res> {
  factory _$AccommodationCopyWith(
          _Accommodation value, $Res Function(_Accommodation) then) =
      __$AccommodationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String location,
      String owner,
      String image,
      double? rating});
}

/// @nodoc
class __$AccommodationCopyWithImpl<$Res>
    extends _$AccommodationCopyWithImpl<$Res>
    implements _$AccommodationCopyWith<$Res> {
  __$AccommodationCopyWithImpl(
      _Accommodation _value, $Res Function(_Accommodation) _then)
      : super(_value, (v) => _then(v as _Accommodation));

  @override
  _Accommodation get _value => super._value as _Accommodation;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? location = freezed,
    Object? owner = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_Accommodation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Accommodation implements _Accommodation {
  const _$_Accommodation(
      {required this.id,
      required this.title,
      required this.location,
      required this.owner,
      required this.image,
      this.rating});

  factory _$_Accommodation.fromJson(Map<String, dynamic> json) =>
      _$$_AccommodationFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String location;
  @override
  final String owner;
  @override
  final String image;
  @override
  final double? rating;

  @override
  String toString() {
    return 'Accommodation(id: $id, title: $title, location: $location, owner: $owner, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Accommodation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$AccommodationCopyWith<_Accommodation> get copyWith =>
      __$AccommodationCopyWithImpl<_Accommodation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccommodationToJson(this);
  }
}

abstract class _Accommodation implements Accommodation {
  const factory _Accommodation(
      {required String id,
      required String title,
      required String location,
      required String owner,
      required String image,
      double? rating}) = _$_Accommodation;

  factory _Accommodation.fromJson(Map<String, dynamic> json) =
      _$_Accommodation.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get owner => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccommodationCopyWith<_Accommodation> get copyWith =>
      throw _privateConstructorUsedError;
}
