import 'package:flutter/material.dart';
import 'postingan.dart';

class HalUtama extends StatelessWidget {
  final topBar = new AppBar(
    title: SizedBox(
      width: 100.0,
      height: 30.0, child: Image.asset("images/logo.png"),
    ),
    elevation: 0.0,
    backgroundColor: Color(0xffA8C7C8),
    centerTitle: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: Postingan(),
      backgroundColor: Color(0xffA8C7C8),
      bottomNavigationBar: new Container(
        height: 45.0,
        child: new BottomAppBar(
          elevation: 0.0,
          color: Color(0xffA8C7C8),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(
                icon: Icon(Icons.home,
                size: 30.0),
                color: Colors.black,
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.add_box,
                size: 30.0),
                color: Colors.black,
                onPressed: () {},
              ),
              new IconButton(
                icon: Icon(Icons.person,
                size: 30.0),
                color: Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
