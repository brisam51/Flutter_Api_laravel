import 'package:flutter/material.dart';
import 'package:flutter_auth_laravel/services/auth.dart';
import 'package:provider/provider.dart';

import 'Screens/home_screen.dart';

void main() {
 runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Auth ()),
        
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home:Home_screen() ,
    );
  }
}
  