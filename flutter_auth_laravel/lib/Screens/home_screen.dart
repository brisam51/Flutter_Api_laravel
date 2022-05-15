// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flutte_Auth_laravel")),
      body: Center(child: Text('Center home screen'),),
      drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    //padding: EdgeInsets.zero,
    children: [
       DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child:Column(
          children: [
            Text('Personal Page',style: TextStyle(color:Colors.white),),
        CircleAvatar(backgroundColor: Colors.amber,radius: 30,),
        SizedBox(height: 10,),
        Text('name of user',style: TextStyle(color:Colors.white)),
        SizedBox(height: 10,),
        Text('emali@gmail.com',style: TextStyle(color:Colors.white))
        ],) 
      ),
      ListTile(
        title: const Text('Login'),
        leading: Icon(Icons.login),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: const Text('Log Out'),
        leading: Icon(Icons.logout),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
       
    ],
  ),
),
    );
    
  }
}