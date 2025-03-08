import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
sealed class Todo with _$Todo {
  factory Todo({required String description, bool? completed}) = _Todo;

  /// Convert a JSON object into an [Todo] instance.
  /// This enables type-safe reading of the API response.
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
