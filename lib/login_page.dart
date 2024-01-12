import 'package:flutter/material.dart';
import 'package:moiveui/utils.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height / 2,
            color: mainColor,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              padding: const EdgeInsets.all(30.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleOfLogin(),
                    const SparteWidget(),
                    const ParagraphOfLogin(),
                    const SparteWidget(
                      hight: 20,
                    ),
                    const FormCustom(),
                    const SparteWidget(),
                    const CustomTextButton(),
                    const SparteWidget(),
                    LoginButton()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 20,
          backgroundColor: mainColor,
          shadowColor: grey,
          minimumSize: Size.fromHeight(60),
        ),
        onPressed: () {},
        child: Text(
          "Login",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
                value: true,
                onChanged: (value) {
                  print(value);
                }),
            TextButton(onPressed: () {}, child: Text("Remember me")),
          ],
        ),
        TextButton(onPressed: () {}, child: Text("I Forget Password")),
      ],
    );
  }
}

class FormCustom extends StatelessWidget {
  const FormCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Form(
        child: Column(
      children: [
        EmailField(),
        SparteWidget(
          hight: 20,
        ),
        PasswordField()
      ],
    ));
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Email Addrees",
          fillColor: grey,
          suffixIcon: Icon(Icons.check),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: mainColor))),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: const InputDecoration(
          labelText: "Password",
          fillColor: grey,
          suffixIcon: Icon(Icons.remove_red_eye),
          border:
              UnderlineInputBorder(borderSide: BorderSide(color: mainColor))),
    );
  }
}

class SparteWidget extends StatelessWidget {
  final double hight;
  const SparteWidget({super.key, this.hight = 10});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight,
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
      "Please Login with your information",
      style: Theme.of(context)
          .textTheme
          .bodySmall
          ?.copyWith(color: grey, fontWeight: FontWeight.bold),
    );
  }
}
