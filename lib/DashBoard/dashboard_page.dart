import 'package:flutter/material.dart';
import 'package:macroceleb_web_flutter/NavBar/NavbarDash.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(102, 126, 234, 1.0),
                  Color.fromRGBO(118, 75, 162, 1.0)
                ]),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                NavbarDash(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
