// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

main(){
  runApp(AppWidget(title: 'Brincando com Flutter'));
}

class AppWidget extends StatelessWidget {
 
  final String title;
  
  const AppWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
      
    );
  }
}

  //StatefulWidget
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
    return Container(
        child: Center(child: GestureDetector(child: Text('Contador: $counter'), onTap: (){
          setState(() {
            counter++; //necessario dizer que o estado vai ser modificado e precisa ser reconstuido
          });
          
        }))
      );
    
  }

}