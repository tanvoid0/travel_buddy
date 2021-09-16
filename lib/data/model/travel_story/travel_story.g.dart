// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelStory _$$_TravelStoryFromJson(Map<String, dynamic> json) =>
    _$_TravelStory(
      id: json['id'] as String,
      cover: json['cover'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      trip: (json['trip'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String,
      reactions: Reactions.fromJson(json['reactions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TravelStoryToJson(_$_TravelStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cover': instance.cover,
      'title': instance.title,
      'description': instance.description,
      'trip': instance.trip,
      'createdAt': instance.createdAt,
      'reactions': instance.reactions,
    };

_$_Reactions _$$_ReactionsFromJson(Map<String, dynamic> json) => _$_Reactions(
      like: json['like'] as int,
      amazed: json['amazed'] as int,
      excited: json['excited'] as int,
      support: json['support'] as int,
    );

Map<String, dynamic> _$$_ReactionsToJson(_$_Reactions instance) =>
    <String, dynamic>{
      'like': instance.like,
      'amazed': instance.amazed,
      'excited': instance.excited,
      'support': instance.support,
    };
