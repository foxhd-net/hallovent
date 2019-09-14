import 'package:flutter/material.dart';
import 'validation.dart';






class HalSignup extends StatefulWidget {
  createState() {
    return HalSignupState();
  }
}

class HalSignupState extends State<HalSignup> with Validation {

  final formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';


  Widget build(context) {
    return SingleChildScrollView(
//      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            logo(),
            nameField(),
            emailField(),
            passwordField(),
            registerButton(),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0, bottom: 50.0),
      child: Column(
        children: <Widget>[
          Image.asset('images/logo.png',
              width: 156.0, height: 40.0)
        ],
      ),
    );
  }

  Widget nameField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
            labelText: 'Nama Lengkap',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
        ),
        validator: validateName,
        onSaved: (String value) {

        },
      ),
    );
  }

  Widget emailField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
            labelText: 'email',
            hintText: 'email@example.com',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
        ),
        validator: validateEmail, //BERLAKU SAMA DENGAN HELPERS SEBELUMNYA
        onSaved: (String value) {
          email = value;
        },
      ),
    );
  }

  Widget passwordField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
            labelText: 'Password',
            hintText: 'enter password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
        ),
        validator: validatePassword, ////BERLAKU SAMA DENGAN HELPERS SEBELUMNYA
        onSaved: (String value) {
          password = value;
        },
      ),
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();

          print('Nama lengkap: $name');
          print('Email: $email');
          print('Password: $password');

        }
      },
      child: Text('Daftar'),
    );
  }
}