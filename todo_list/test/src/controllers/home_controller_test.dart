//@dart=2.9

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/controllers/home_controller.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';


class TodoRepositoryMock extends Mock implements TodoRepository{
}

main(){
  
  final repository = TodoRepositoryMock();

  final controller = HomeController();
  
  test('deve preencher variavel todos', () async {

    when(repository.fetchTodos()).thenAnswer((realInvocation) async => [TodoModel()]);

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);
  });

    test('deve modificar o estado para error se a requisição falhar', () async {

    when(repository.fetchTodos()).thenThrow((Exception()) async => [TodoModel()]);

    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.error);
  });
}