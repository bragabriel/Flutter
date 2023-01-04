import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  String email = '';
  String password = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField( 
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border:OutlineInputBorder()
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                   onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border:OutlineInputBorder()
                  ),
                ),
                 SizedBox(
                  height: 15,
                ),
              ElevatedButton(
                onPressed:() {
                  if(email == 'teste@teste.com' && password == '123'){
                    print('correto');
                  }else{
                    print('login inválido');
                  }
                },
                child: Text('Entrar'),
              )
              ]),
          ),
        ),
      ),
    );
  }
}