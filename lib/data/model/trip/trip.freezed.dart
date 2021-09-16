// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trip _$TripFromJson(Map<String, dynamic> json) {
  return _Trip.fromJson(json);
}

/// @nodoc
class _$TripTearOff {
  const _$TripTearOff();

  _Trip call(
      {required String id,
      required User host,
      required String title,
      required String description,
      required List<String> trip,
      required List<String> date,
      required Budget budget,
      List<User> participants = const []}) {
    return _Trip(
      id: id,
      host: host,
      title: title,
      description: description,
      trip: trip,
      date: date,
      budget: budget,
      participants: participants,
    );
  }

  Trip fromJson(Map<String, Object> json) {
    return Trip.fromJson(json);
  }
}

/// @nodoc
const $Trip = _$TripTearOff();

/// @nodoc
mixin _$Trip {
  String get id => throw _privateConstructorUsedError;
  User get host => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get trip => throw _privateConstructorUsedError;
  List<String> get date => throw _privateConstructorUsedError;
  Budget get budget => throw _privateConstructorUsedError;
  List<User> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TripCopyWith<Trip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;
  $Res call(
      {String id,
      User host,
      String title,
      String description,
      List<String> trip,
      List<String> date,
      Budget budget,
      List<User> participants});

  $UserCopyWith<$Res> get host;
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;
  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? host = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? trip = freezed,
    Object? date = freezed,
    Object? budget = freezed,
    Object? participants = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as User,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }

  @override
  $UserCopyWith<$Res> get host {
    return $UserCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value));
    });
  }

  @override
  $BudgetCopyWith<$Res> get budget {
    return $BudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value));
    });
  }
}

/// @nodoc
abstract class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) then) =
      __$TripCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      User host,
      String title,
      String description,
      List<String> trip,
      List<String> date,
      Budget budget,
      List<User> participants});

  @override
  $UserCopyWith<$Res> get host;
  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(_Trip _value, $Res Function(_Trip) _then)
      : super(_value, (v) => _then(v as _Trip));

  @override
  _Trip get _value => super._value as _Trip;

  @override
  $Res call({
    Object? id = freezed,
    Object? host = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? trip = freezed,
    Object? date = freezed,
    Object? budget = freezed,
    Object? participants = freezed,
  }) {
    return _then(_Trip(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as User,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trip implements _Trip {
  const _$_Trip(
      {required this.id,
      required this.host,
      required this.title,
      required this.description,
      required this.trip,
      required this.date,
      required this.budget,
      this.participants = const []});

  factory _$_Trip.fromJson(Map<String, dynamic> json) => _$$_TripFromJson(json);

  @override
  final String id;
  @override
  final User host;
  @override
  final String title;
  @override
  final String description;
  @override
  final List<String> trip;
  @override
  final List<String> date;
  @override
  final Budget budget;
  @JsonKey(defaultValue: const [])
  @override
  final List<User> participants;

  @override
  String toString() {
    return 'Trip(id: $id, host: $host, title: $title, description: $description, trip: $trip, date: $date, budget: $budget, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trip &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.trip, trip) ||
                const DeepCollectionEquality().equals(other.trip, trip)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.participants, participants) ||
                const DeepCollectionEquality()
                    .equals(other.participants, participants)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(trip) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(participants);

  @JsonKey(ignore: true)
  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TripToJson(this);
  }
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {required String id,
      required User host,
      required String title,
      required String description,
      required List<String> trip,
      required List<String> date,
      required Budget budget,
      List<User> participants}) = _$_Trip;

  factory _Trip.fromJson(Map<String, dynamic> json) = _$_Trip.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  User get host => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  List<String> get trip => throw _privateConstructorUsedError;
  @override
  List<String> get date => throw _privateConstructorUsedError;
  @override
  Budget get budget => throw _privateConstructorUsedError;
  @override
  List<User> get participants => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TripCopyWith<_Trip> get copyWith => throw _privateConstructorUsedError;
}

Budget _$BudgetFromJson(Map<String, dynamic> json) {
  return _Budget.fromJson(json);
}

/// @nodoc
class _$BudgetTearOff {
  const _$BudgetTearOff();

  _Budget call(
      {required double min, required double max, required String currency}) {
    return _Budget(
      min: min,
      max: max,
      currency: currency,
    );
  }

  Budget fromJson(Map<String, Object> json) {
    return Budget.fromJson(json);
  }
}

/// @nodoc
const $Budget = _$BudgetTearOff();

/// @nodoc
mixin _$Budget {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetCopyWith<Budget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res>;
  $Res call({double min, double max, String currency});
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res> implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  final Budget _value;
  // ignore: unused_field
  final $Res Function(Budget) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BudgetCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$BudgetCopyWith(_Budget value, $Res Function(_Budget) then) =
      __$BudgetCopyWithImpl<$Res>;
  @override
  $Res call({double min, double max, String currency});
}

/// @nodoc
class __$BudgetCopyWithImpl<$Res> extends _$BudgetCopyWithImpl<$Res>
    implements _$BudgetCopyWith<$Res> {
  __$BudgetCopyWithImpl(_Budget _value, $Res Function(_Budget) _then)
      : super(_value, (v) => _then(v as _Budget));

  @override
  _Budget get _value => super._value as _Budget;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? currency = freezed,
  }) {
    return _then(_Budget(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Budget implements _Budget {
  const _$_Budget(
      {required this.min, required this.max, required this.currency});

  factory _$_Budget.fromJson(Map<String, dynamic> json) =>
      _$$_BudgetFromJson(json);

  @override
  final double min;
  @override
  final double max;
  @override
  final String currency;

  @override
  String toString() {
    return 'Budget(min: $min, max: $max, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Budget &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(currency);

  @JsonKey(ignore: true)
  @override
  _$BudgetCopyWith<_Budget> get copyWith =>
      __$BudgetCopyWithImpl<_Budget>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BudgetToJson(this);
  }
}

abstract class _Budget implements Budget {
  const factory _Budget(
      {required double min,
      required double max,
      required String currency}) = _$_Budget;

  factory _Budget.fromJson(Map<String, dynamic> json) = _$_Budget.fromJson;

  @override
  double get min => throw _privateConstructorUsedError;
  @override
  double get max => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BudgetCopyWith<_Budget> get copyWith => throw _privateConstructorUsedError;
}
