//@dart=2.9

import 'package:todo_list/src/repositories/todo_repository.dart';

import '../models/todo_model.dart';

class HomeController{
  List<TodoModel> todos = [];

  final repository = TodoRepository();

  Future start() async {
    todos = await repository.fetchTodos();
  }
}

