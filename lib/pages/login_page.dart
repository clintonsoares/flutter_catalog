import 'package:flutter/material.dart';
import '../utils/page_constants.dart' as Pages;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 32.0),
              child: Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              Pages.LOGIN_PAGE,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: LoginArea(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: "Username",
            hintText: "Enter your username",
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            labelText: "Password",
            hintText: "Enter your Password",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("LOGIN"),
          ),
        )
      ],
    );
  }
}
