  //StatefulWidget = Dinamico -> Pode ser modificado
  import 'package:cursoflutter/app_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
    @override
    State<StatefulWidget> createState(){
      return HomePageState();
    }
  }

//Criando uma classe para ser retornada e funcionar como um estado
class HomePageState extends State<HomePage>{

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        
        //botões que ficam na lateral direita
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Center(
        child: CustomSwitch(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++; //necessario dizer que o estado vai ser modificado e precisa ser reconstuido
          });
        },),
      
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
            value: AppController.instance.isDartTheme, 
            onChanged: (value){
            AppController.instance.changeTheme();
          });
  }
}