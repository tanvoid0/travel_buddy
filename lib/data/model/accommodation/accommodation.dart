// To parse this JSON data, do
//
//     final accommodation = accommodationFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'accommodation.freezed.dart';

part 'accommodation.g.dart';

@freezed
abstract class Accommodation with _$Accommodation {
  const factory Accommodation({
    required String id,
    required String title,
    required String location,
    required String owner,
    required String image,
    double? rating,
  }) = _Accommodation;

  factory Accommodation.fromJson(Map<String, dynamic> json)  => _$AccommodationFromJson(json);
}
