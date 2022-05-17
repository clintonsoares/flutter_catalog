import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import '../utils/page_constants.dart' as Pages;

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  bool isAnimateBtn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
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
              Text(
                "${Pages.LOGIN_PAGE} $userName",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter your username",
                      ),
                      onChanged: (value) {
                        userName = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your Password",
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          isAnimateBtn = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, AppRoutes.HOME_ROUTE);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: isAnimateBtn ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: isAnimateBtn
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(isAnimateBtn ? 50 : 30)),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, AppRoutes.HOME_ROUTE);
                    //   },
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 50),
                    //     shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30.0)),
                    //   ),
                    //   child: Text("LOGIN"),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Chapter 7