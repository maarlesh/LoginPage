import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  @override
  createState(){
    return LoginScreenState();
  }
}
class LoginScreenState extends State<LoginScreen> with ValidatorMixin{
  final formKey = GlobalKey<FormState>();
  String? email = '';
  String? password = '';
  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
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
      ),
      validator: validateEmail,
      onSaved: (String? email){
        this.email = email;
      },
    );
  }
  Widget passwordField(){
     return TextFormField(
      decoration : const InputDecoration(
        labelText: "Password",
        hintText:"Password"
      ),
      validator: validatePassword,
      onSaved: (String? password){
        this.password = password;
      },
     );
  }
  Widget submitButton(){
     return ElevatedButton(
      onPressed: (){
        if(formKey.currentState?.validate() == true){
          formKey.currentState?.save();
          print('Email:$email, Password:$password');
        }
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