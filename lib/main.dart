import 'package:flutter/material.dart';
import 'package:flutter_xaydunggiaodien/home.dart';
import 'package:flutter_xaydunggiaodien/loginScreen.dart';
import 'package:flutter_xaydunggiaodien/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
        initialRoute: '/',
      routes: {
        '/':(context) => const Login(),
        '/home':(context) => const HomeScreen(),
        '/profile':(context) => const MyProfile()
      },
    );
  }
}

