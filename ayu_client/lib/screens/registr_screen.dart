import 'package:ayu_client/widgets/colors/colors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Создать аккаунт',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 25),
            const Text('Номер телефона'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Эл. почта'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Пароль'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Подтверждение пароля'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Имя, фамилия'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Область'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Район'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            const Text('Дата рождения'),
            const SizedBox(height: 5),
            const TextField(decoration: textFieldDecoration),
            const SizedBox(height: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.green,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  child: const Text(
                    'Создать ',
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
