//@dart=2.9

import 'package:dio/dio.dart';

import '../models/todo_model.dart';

class TodoRepository{

  Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository([Dio client]) {
 
    if (client == null) {
      dio = Dio();
    } else {
      dio = client;
    }
  }

  Future<List<TodoModel>> fetchTodos() async{
    final response = await dio.get(url);
    response.data;

    final list = response.data as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      //serializando meus arrays
      final todo = TodoModel.fromJson(json);

      //adicionando na lista
      todos.add(todo);
    }
    return todos;
  }
}