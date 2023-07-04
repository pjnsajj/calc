
import 'package:ayu_client/auth_screen/auth_screen.dart';
import 'package:ayu_client/main_screen/main_screen.dart';
import 'package:ayu_client/registr_screen/registr_screen.dart';
import 'package:ayu_client/start_screen/start_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayu client',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.blueAccent)),
      routes: {
        'auth_screen': (context) => const AuthScreen(),
        'start_screen': (context) => const StartScreen(),
        'register_screen': (context) => const RegisterScreen(),
        'main_screen': (context) => const MainScreen(),
      },
      initialRoute: 'start_screen',
    );
  }
}
