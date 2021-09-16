// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'travel_story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelStory _$TravelStoryFromJson(Map<String, dynamic> json) {
  return _TravelStory.fromJson(json);
}

/// @nodoc
class _$TravelStoryTearOff {
  const _$TravelStoryTearOff();

  _TravelStory call(
      {required String id,
      required String cover,
      required String title,
      required String description,
      required List<String> trip,
      required String createdAt,
      required Reactions reactions}) {
    return _TravelStory(
      id: id,
      cover: cover,
      title: title,
      description: description,
      trip: trip,
      createdAt: createdAt,
      reactions: reactions,
    );
  }

  TravelStory fromJson(Map<String, Object> json) {
    return TravelStory.fromJson(json);
  }
}

/// @nodoc
const $TravelStory = _$TravelStoryTearOff();

/// @nodoc
mixin _$TravelStory {
  String get id => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get trip => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Reactions get reactions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelStoryCopyWith<TravelStory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelStoryCopyWith<$Res> {
  factory $TravelStoryCopyWith(
          TravelStory value, $Res Function(TravelStory) then) =
      _$TravelStoryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String cover,
      String title,
      String description,
      List<String> trip,
      String createdAt,
      Reactions reactions});

  $ReactionsCopyWith<$Res> get reactions;
}

/// @nodoc
class _$TravelStoryCopyWithImpl<$Res> implements $TravelStoryCopyWith<$Res> {
  _$TravelStoryCopyWithImpl(this._value, this._then);

  final TravelStory _value;
  // ignore: unused_field
  final $Res Function(TravelStory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? trip = freezed,
    Object? createdAt = freezed,
    Object? reactions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trip: trip == freezed
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Reactions,
    ));
  }

  @override
  $ReactionsCopyWith<$Res> get reactions {
    return $ReactionsCopyWith<$Res>(_value.reactions, (value) {
      return _then(_value.copyWith(reactions: value));
    });
  }
}

/// @nodoc
abstract class _$TravelStoryCopyWith<$Res>
    implements $TravelStoryCopyWith<$Res> {
  factory _$TravelStoryCopyWith(
          _TravelStory value, $Res Function(_TravelStory) then) =
      __$TravelStoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String cover,
      String title,
      String description,
      List<String> trip,
      String createdAt,
      Reactions reactions});

  @override
  $ReactionsCopyWith<$Res> get reactions;
}

/// @nodoc
class __$TravelStoryCopyWithImpl<$Res> extends _$TravelStoryCopyWithImpl<$Res>
    implements _$TravelStoryCopyWith<$Res> {
  __$TravelStoryCopyWithImpl(
      _TravelStory _value, $Res Function(_TravelStory) _then)
      : super(_value, (v) => _then(v as _TravelStory));

  @override
  _TravelStory get _value => super._value as _TravelStory;

  @override
  $Res call({
    Object? id = freezed,
    Object? cover = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? trip = freezed,
    Object? createdAt = freezed,
    Object? reactions = freezed,
  }) {
    return _then(_TravelStory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      cover: cover == freezed
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      trip: trip == freezed
          ? _value.trip
          : trip // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      reactions: reactions == freezed
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as Reactions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelStory implements _TravelStory {
  const _$_TravelStory(
      {required this.id,
      required this.cover,
      required this.title,
      required this.description,
      required this.trip,
      required this.createdAt,
      required this.reactions});

  factory _$_TravelStory.fromJson(Map<String, dynamic> json) =>
      _$$_TravelStoryFromJson(json);

  @override
  final String id;
  @override
  final String cover;
  @override
  final String title;
  @override
  final String description;
  @override
  final List<String> trip;
  @override
  final String createdAt;
  @override
  final Reactions reactions;

  @override
  String toString() {
    return 'TravelStory(id: $id, cover: $cover, title: $title, description: $description, trip: $trip, createdAt: $createdAt, reactions: $reactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelStory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cover, cover) ||
                const DeepCollectionEquality().equals(other.cover, cover)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.reactions, reactions) ||
                const DeepCollectionEquality()
                    .equals(other.reactions, reactions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cover) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(trip) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(reactions);

  @JsonKey(ignore: true)
  @override
  _$TravelStoryCopyWith<_TravelStory> get copyWith =>
      __$TravelStoryCopyWithImpl<_TravelStory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelStoryToJson(this);
  }
}

abstract class _TravelStory implements TravelStory {
  const factory _TravelStory(
      {required String id,
      required String cover,
      required String title,
      required String description,
      required List<String> trip,
      required String createdAt,
      required Reactions reactions}) = _$_TravelStory;

  factory _TravelStory.fromJson(Map<String, dynamic> json) =
      _$_TravelStory.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get cover => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<String> get trip => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  Reactions get reactions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelStoryCopyWith<_TravelStory> get copyWith =>
      throw _privateConstructorUsedError;
}

Reactions _$ReactionsFromJson(Map<String, dynamic> json) {
  return _Reactions.fromJson(json);
}

/// @nodoc
class _$ReactionsTearOff {
  const _$ReactionsTearOff();

  _Reactions call(
      {required int like,
      required int amazed,
      required int excited,
      required int support}) {
    return _Reactions(
      like: like,
      amazed: amazed,
      excited: excited,
      support: support,
    );
  }

  Reactions fromJson(Map<String, Object> json) {
    return Reactions.fromJson(json);
  }
}

/// @nodoc
const $Reactions = _$ReactionsTearOff();

/// @nodoc
mixin _$Reactions {
  int get like => throw _privateConstructorUsedError;
  int get amazed => throw _privateConstructorUsedError;
  int get excited => throw _privateConstructorUsedError;
  int get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactionsCopyWith<Reactions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionsCopyWith<$Res> {
  factory $ReactionsCopyWith(Reactions value, $Res Function(Reactions) then) =
      _$ReactionsCopyWithImpl<$Res>;
  $Res call({int like, int amazed, int excited, int support});
}

/// @nodoc
class _$ReactionsCopyWithImpl<$Res> implements $ReactionsCopyWith<$Res> {
  _$ReactionsCopyWithImpl(this._value, this._then);

  final Reactions _value;
  // ignore: unused_field
  final $Res Function(Reactions) _then;

  @override
  $Res call({
    Object? like = freezed,
    Object? amazed = freezed,
    Object? excited = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      amazed: amazed == freezed
          ? _value.amazed
          : amazed // ignore: cast_nullable_to_non_nullable
              as int,
      excited: excited == freezed
          ? _value.excited
          : excited // ignore: cast_nullable_to_non_nullable
              as int,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ReactionsCopyWith<$Res> implements $ReactionsCopyWith<$Res> {
  factory _$ReactionsCopyWith(
          _Reactions value, $Res Function(_Reactions) then) =
      __$ReactionsCopyWithImpl<$Res>;
  @override
  $Res call({int like, int amazed, int excited, int support});
}

/// @nodoc
class __$ReactionsCopyWithImpl<$Res> extends _$ReactionsCopyWithImpl<$Res>
    implements _$ReactionsCopyWith<$Res> {
  __$ReactionsCopyWithImpl(_Reactions _value, $Res Function(_Reactions) _then)
      : super(_value, (v) => _then(v as _Reactions));

  @override
  _Reactions get _value => super._value as _Reactions;

  @override
  $Res call({
    Object? like = freezed,
    Object? amazed = freezed,
    Object? excited = freezed,
    Object? support = freezed,
  }) {
    return _then(_Reactions(
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int,
      amazed: amazed == freezed
          ? _value.amazed
          : amazed // ignore: cast_nullable_to_non_nullable
              as int,
      excited: excited == freezed
          ? _value.excited
          : excited // ignore: cast_nullable_to_non_nullable
              as int,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reactions implements _Reactions {
  const _$_Reactions(
      {required this.like,
      required this.amazed,
      required this.excited,
      required this.support});

  factory _$_Reactions.fromJson(Map<String, dynamic> json) =>
      _$$_ReactionsFromJson(json);

  @override
  final int like;
  @override
  final int amazed;
  @override
  final int excited;
  @override
  final int support;

  @override
  String toString() {
    return 'Reactions(like: $like, amazed: $amazed, excited: $excited, support: $support)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reactions &&
            (identical(other.like, like) ||
                const DeepCollectionEquality().equals(other.like, like)) &&
            (identical(other.amazed, amazed) ||
                const DeepCollectionEquality().equals(other.amazed, amazed)) &&
            (identical(other.excited, excited) ||
                const DeepCollectionEquality()
                    .equals(other.excited, excited)) &&
            (identical(other.support, support) ||
                const DeepCollectionEquality().equals(other.support, support)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(like) ^
      const DeepCollectionEquality().hash(amazed) ^
      const DeepCollectionEquality().hash(excited) ^
      const DeepCollectionEquality().hash(support);

  @JsonKey(ignore: true)
  @override
  _$ReactionsCopyWith<_Reactions> get copyWith =>
      __$ReactionsCopyWithImpl<_Reactions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReactionsToJson(this);
  }
}

abstract class _Reactions implements Reactions {
  const factory _Reactions(
      {required int like,
      required int amazed,
      required int excited,
      required int support}) = _$_Reactions;

  factory _Reactions.fromJson(Map<String, dynamic> json) =
      _$_Reactions.fromJson;

  @override
  int get like => throw _privateConstructorUsedError;
  @override
  int get amazed => throw _privateConstructorUsedError;
  @override
  int get excited => throw _privateConstructorUsedError;
  @override
  int get support => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReactionsCopyWith<_Reactions> get copyWith =>
      throw _privateConstructorUsedError;
}
