// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  ///----------------
  TextEditingController _emaileController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

   final _formKey = GlobalKey<FormState>();

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    
    _emaileController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          
          key:_formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emaileController,
                validator:(value)=>value!.isEmpty ? 'plese inter valid email':null,
              ),
              TextFormField(
                controller: _passwordController,
                validator:(value)=>value!.isEmpty ? 'plese inter valid password':null,
              ),
              SizedBox(height: 5),
              

              FlatButton(
                minWidth: double.infinity,
                color: Colors.blue,
                onPressed: (){
                  Map  creds={
                    'email':_emaileController.text,
                    'password':_passwordController.text,
                    'device_name':'mobil'
                  };
                  if(_formKey.currentState!.validate()){
                   Provider.of<Auth>(context,listen: false).login(creds: creds);

                   Navigator.pop(context);
                  }
                },
                 child: Text('login',style: TextStyle(color: Colors.white),))

                
  
            ],
          ),
          
           ),
      ),

    );
    
  }
}