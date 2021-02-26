import 'package:flutter/material.dart';

class NavbarDash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DesktopNavBar2();
      },
    );
  }
}

class DesktopNavBar2 extends StatefulWidget {
  @override
  _DesktopNavBar2State createState() => _DesktopNavBar2State();
}

class _DesktopNavBar2State extends State<DesktopNavBar2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Macroceleb",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Container(
              width: 350,
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                flexibleSpace: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    tabs: [
                      _customTab(Icon(Icons.home), "Home"),
                      _customTab(Icon(Icons.search), "Search"),
                      _customTab(Icon(Icons.message), "Chat"),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Icon(Icons.arrow_drop_down,color: Colors.white,),
                  Text("Username",style: TextStyle(color: Colors.white),),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                      child : Icon(Icons.person)
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _customTab(Icon icon, String title) {
  return Tab(
    child: Container(
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    ),
  );
}
