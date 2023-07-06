import 'package:ayu_client/colors/colors.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final loginTextController = TextEditingController(text: 'admin');
  final passwordTextController = TextEditingController(text: 'admin');
  String? errorText;

  _auth() {
    final login = loginTextController.text;
    final password = passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      final navigator = Navigator.of(context);
      navigator.pushNamed('main_screen');
    } else {
      return errorText = 'Не верный логин или пароль';
    }
  }

  void _resetPassword() {
    // ignore: avoid_print
    print('Забыли пароль?');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (errorText != null) ...[
              const Text(
                'Не верный логин или пароль',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
            const SizedBox(height: 20),
            const Text(
              'Войти',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            const Text('Эл. почта'),
            const SizedBox(height: 15),
            TextField(
                controller: loginTextController,
                decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Пароль'),
            const SizedBox(height: 5),
            TextField(
                controller: passwordTextController,
                decoration: textFieldDecoration),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: _resetPassword,
                    child: const Text('Забыли пароль?')),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: _auth,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.blueAccent,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: const Text(
                    'Войти ',
                    textAlign: TextAlign.center,
                    style: WhiteTextStyle,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
