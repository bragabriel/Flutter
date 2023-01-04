//StateLess = Estatico -> Não pode ser modificado
import 'package:cursoflutter/app_controller.dart';
import 'package:cursoflutter/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class AppWidget extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            
            //Se for true, retorna o dark. 
            //Se for false, retorna o light
            brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light,
          ),
          home: LoginPage(),
        );
      },
    );
  }
}