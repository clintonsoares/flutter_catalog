import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/route_constants.dart' as Routes;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        Routes.DEFAULT_ROUTE: (context) => LoginPage(),
        Routes.HOME_ROUTE: (context) => HomePage(),
        Routes.LOGIN_ROUTE: (context) => LoginPage()
      },
    );
  }
}
