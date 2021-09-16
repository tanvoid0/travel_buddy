// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      address: json['address'] as String,
      type: json['type'] as String,
      rating: Rating.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'address': instance.address,
      'type': instance.type,
      'rating': instance.rating,
    };

_$_Rating _$$_RatingFromJson(Map<String, dynamic> json) => _$_Rating(
      traveller: (json['traveller'] as num?)?.toDouble() ?? 0,
      guide: (json['guide'] as num?)?.toDouble() ?? 0,
      driver: (json['driver'] as num?)?.toDouble() ?? 0,
      host: (json['host'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'traveller': instance.traveller,
      'guide': instance.guide,
      'driver': instance.driver,
      'host': instance.host,
    };
