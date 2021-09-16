import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
abstract class Place with _$Place {
  const factory Place({
    required String id,
    required String title,
    required String location,
    required String image,
    required int going,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
