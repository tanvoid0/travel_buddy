// To parse this JSON data, do
//
//     final trip = tripFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:travel_buddy/data/model/user/user.dart';

part 'trip.freezed.dart';
part 'trip.g.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip({
    required String id,
    required User host,
    required String title,
    required String description,
    required List<String> trip,
    required List<String> date,
    required Budget budget,
    @Default([]) List<User> participants,
  }) = _Trip;

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);
}

@freezed
abstract class Budget with _$Budget {
  const factory Budget({
    required double min,
    required double max,
    required String currency,
  }) = _Budget;

  factory Budget.fromJson(Map<String, dynamic> json) => _$BudgetFromJson(json);
}
