import 'package:flutter/material.dart';
import 'hal_login.dart' as HalLogin;
import 'registion.dart' as HalSignup;


class HalamanLogin extends StatefulWidget {
  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> with SingleTickerProviderStateMixin{

  TabController controller;
  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff221131),
//        appBar: new TabBar(
//          controller: controller,
//          tabs: <Widget>[
//            new Tab(text: "Login"),
//            new Tab(text: "Sign Up"),
//          ],
//        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new HalLogin.HalLogin(),
            new HalSignup.HalSignup(),
          ],
        )
    );
  }
}
