// To parse this JSON data, do
//
//     final travelStory = travelStoryFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'travel_story.freezed.dart';
part 'travel_story.g.dart';

@freezed
abstract class TravelStory with _$TravelStory {
  const factory TravelStory({
    required String id,
    required String cover,
    required String title,
    required String description,
    required List<String> trip,
    required String createdAt,
    required Reactions reactions,
  }) = _TravelStory;

  factory TravelStory.fromJson(Map<String, dynamic> json) => _$TravelStoryFromJson(json);
}

@freezed
abstract class Reactions with _$Reactions {
  const factory Reactions({
    required int like,
    required int amazed,
    required int excited,
    required int support,
  }) = _Reactions;

  factory Reactions.fromJson(Map<String, dynamic> json) => _$ReactionsFromJson(json);
}
