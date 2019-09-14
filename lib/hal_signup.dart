import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'hal_utama.dart';

//class HalSignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: new EdgeInsets.only(top: 200.0),
                    child: new Image.asset('images/logo.png',
                        width: 156, height: 40),
                  ),
                ],
              ),
              new Padding(
                padding: new EdgeInsets.all(10),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffA8C7C8),
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField(
                  decoration: InputDecoration(
                      fillColor: Color(0xffA8C7C8),
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color(0xffA8C7C8),
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
//            add button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Color(0xffA8C7C8),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HalUtama()),
                          );
                        },
                        child: Text("Register"),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
