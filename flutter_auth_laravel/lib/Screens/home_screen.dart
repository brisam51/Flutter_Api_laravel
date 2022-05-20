// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth.dart';
import 'login_screen.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset : false,
      appBar: AppBar(
        title: Text("Flutter laravel Auth"),
      ),
      body:SingleChildScrollView(child: Center(child: Text('home secreen'))),
      drawer: Drawer(child: Consumer<Auth>(
        
        builder: ((context, auth, child) {
          if (!auth.authenticated) {
            return ListView(
              children: [
                ListTile(
                  title: Text('login'),
                  leading: Icon(Icons.login),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            );
          } else {
            return (
             
               ListView(
                children: [
                  DrawerHeader(
                      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        radius: 30,
                        child: const Text('AH'),
                      ),
                      SizedBox(
                        height:3,
                      ),
                      Text('email'),
                      ListTile(
                        title: Text('log out'),
                        leading: Icon(Icons.logout),
                        onTap:(){
                         Provider.of<Auth>(context,listen: false).logout();
                        }
                      )
                    ],
                  ))
                ],
              
            ));
          }
        }),
      )
      ),
    );

  }
}
