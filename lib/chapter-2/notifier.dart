import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'todo.dart';

part 'notifier.g.dart';

@riverpod
class TodoList extends _$TodoList {
  @override
  Future<List<Todo>> build() async {
    // The logic we previously had in our FutureProvider is now in the build method.
    return [
      Todo(description: 'Learn Flutter', completed: true),
      Todo(description: 'Learn Riverpod'),
    ];
  }

  Future<void> addTodo(Todo todo) async {
    // The POST request will return a List<Todo> matching the new application state
    final response = await http.post(
      Uri.https('your_api.com', '/todos'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(todo.toJson()),
    );

    // We decode the API response and convert it to a List<Todo>
    List<Todo> newTodos =
        (jsonDecode(response.body) as List)
            .cast<Map<String, Object?>>()
            .map(Todo.fromJson)
            .toList();

    // We update the local cache to match the new state.
    // This will notify all listeners.
    state = AsyncData(newTodos);
  }
}
