import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  createState(){
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
            ),
            submitButton()
          ],
        ),
      ),
    );
  }
  //helper methods
  Widget emailField(){
    return TextFormField(
      decoration : const InputDecoration(
        labelText: "Email",
        hintText: "yourname14@gmail.com",
      )
    );
  }
  Widget passwordField(){
     return TextFormField(
      decoration : const InputDecoration(
        labelText: "Password",
        hintText:"Password"
      )
     );
  }
  Widget submitButton(){
     return ElevatedButton(
      onPressed: (){

      }, 
      style: const ButtonStyle(
        shadowColor: WidgetStatePropertyAll(Color.fromARGB(255, 41, 1, 105)),
        backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(0, 0, 0, 1))
      ),
      child: const Text(
        'Login',
        style: TextStyle(
          color: Color.fromARGB(255, 168, 143, 207), // Set the text color here
        ),
      ),
    );
  }
}