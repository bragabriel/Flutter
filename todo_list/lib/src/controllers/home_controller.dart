//@dart=2.9

import 'package:todo_list/src/repositories/todo_repository.dart';

import '../models/todo_model.dart';

class HomeController{
  List<TodoModel> todos = [];

  final TodoRepository _repository;

  HomeController([TodoRepository repository])
   : _repository = repository ?? TodoRepository();

  Future start() async {
    todos = await _repository.fetchTodos();
  }
}

