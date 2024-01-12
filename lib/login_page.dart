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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [TitleOfLogin(), SparteWidget(), ParagraphOfLogin()],
        ),
      ),
    );
  }
}

class SparteWidget extends StatelessWidget {
  const SparteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
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

class ParagraphOfLogin extends StatelessWidget {
  const ParagraphOfLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Please Login ",
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: grey, fontWeight: FontWeight.bold),
    );
  }
}
