// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String image,
    required String address,
    required String type,
    required Rating rating,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Rating with _$Rating {
  const factory Rating({
    @Default(0) double traveller,
    @Default(0) double guide,
    @Default(0) double driver,
    @Default(0) double host,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
