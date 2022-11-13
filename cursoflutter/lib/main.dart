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
      home: Container(
        child: Center(child: Text('Flutterando'))
      ),
    );
    
    
  }
}
