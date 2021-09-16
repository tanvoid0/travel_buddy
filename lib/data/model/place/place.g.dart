// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      image: json['image'] as String,
      going: json['going'] as int,
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'image': instance.image,
      'going': instance.going,
    };
