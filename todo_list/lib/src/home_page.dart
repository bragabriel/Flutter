import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  _success(){
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) { 
              return ListTile(
                title: Text('item $index'),
                );
            },
       
      );
  }

  _error(){
    return ElevatedButton(
        onPressed: () {}, 
        child: Text('Tentar novamente'),
      );
  }

  _loading(){
    return Center(
      child: CircularProgressIndicator()
    );
  }

  _start(){
    return Container();
  }

  stateManagement(HomeState state){
    switch (state) {
      case HomeState.start:
        return _start();
      case HomeState.loading:
        return _loading();
      case HomeState.error:
        return _error();
      case HomeState.success:
        return _success();
      default: _start();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Todo\'s'),
      ),
      body:  stateManagement(HomeState.start)
    );
  }
}