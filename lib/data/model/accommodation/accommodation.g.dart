// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accommodation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Accommodation _$$_AccommodationFromJson(Map<String, dynamic> json) =>
    _$_Accommodation(
      id: json['id'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      owner: json['owner'] as String,
      image: json['image'] as String,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AccommodationToJson(_$_Accommodation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'owner': instance.owner,
      'image': instance.image,
      'rating': instance.rating,
    };
