import 'package:ayu_client/screens/auth_screen.dart';
import 'package:ayu_client/screens/main_screen.dart';
import 'package:ayu_client/screens/registr_screen.dart';
import 'package:ayu_client/screens/start_screen.dart';
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
