import 'package:flutter/material.dart';
import '../utils/page_constants.dart' as Pages;

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Pages.HOME_PAGE),
      ),
      body: Center(
        child: Container(
          child: Text("Hi"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
