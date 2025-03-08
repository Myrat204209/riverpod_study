// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Todo _$TodoFromJson(Map<String, dynamic> json) => _Todo(
  description: json['description'] as String,
  completed: json['completed'] as bool?,
);

Map<String, dynamic> _$TodoToJson(_Todo instance) => <String, dynamic>{
  'description': instance.description,
  'completed': instance.completed,
};
