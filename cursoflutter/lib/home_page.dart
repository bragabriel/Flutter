  //StatefulWidget = Dinamico -> Pode ser modificado
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++; //necessario dizer que o estado vai ser modificado e precisa ser reconstuido
          });
        },),
      body: Center(
        child: GestureDetector(
          child: Text('Contador: $counter', style: TextStyle(fontSize: 20),), onTap: (){
          setState(() {
            counter++; //necessario dizer que o estado vai ser modificado e precisa ser reconstuido
          });
        }))
    );
  }
}