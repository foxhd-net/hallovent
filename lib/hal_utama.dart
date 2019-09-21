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
    );
  }
}
