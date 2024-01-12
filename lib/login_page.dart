import 'package:flutter/material.dart';
import 'package:moiveui/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [TitleOfLogin()],
        ),
      ),
    );
  }
}

class TitleOfLogin extends StatelessWidget {
  const TitleOfLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Welcome",
      style: Theme.of(context)
          .textTheme
          .headlineLarge
          ?.copyWith(color: mainColor, fontWeight: FontWeight.bold),
    );
  }
}
