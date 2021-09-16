// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trip _$$_TripFromJson(Map<String, dynamic> json) => _$_Trip(
      id: json['id'] as String,
      host: User.fromJson(json['host'] as Map<String, dynamic>),
      title: json['title'] as String,
      description: json['description'] as String,
      trip: (json['trip'] as List<dynamic>).map((e) => e as String).toList(),
      date: (json['date'] as List<dynamic>).map((e) => e as String).toList(),
      budget: Budget.fromJson(json['budget'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_TripToJson(_$_Trip instance) => <String, dynamic>{
      'id': instance.id,
      'host': instance.host,
      'title': instance.title,
      'description': instance.description,
      'trip': instance.trip,
      'date': instance.date,
      'budget': instance.budget,
      'participants': instance.participants,
    };

_$_Budget _$$_BudgetFromJson(Map<String, dynamic> json) => _$_Budget(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_BudgetToJson(_$_Budget instance) => <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'currency': instance.currency,
    };
