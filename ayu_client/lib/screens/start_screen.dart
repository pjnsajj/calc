import 'package:ayu_client/colors/colors.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('register_screen');
                },
                child: Container(
                  decoration: GreenDecoration,
                  height: 30,
                  child: const Text(
                    ' Регистрация ',
                    textAlign: TextAlign.center,
                    style: WhiteTextStyle,
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('auth_screen');
                },
                child: Container(
                  decoration: GreenDecoration,
                  height: 30,
                  child: const Text(
                    ' Войти ',
                    textAlign: TextAlign.center,
                    style: WhiteTextStyle,
                  ),
                ))
          ],
        ),
      ],
    ));
  }
}
