import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _loginFormState createState() => _loginFormState();
}

class _loginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      right: 20,
      child: Column(
        children: <Widget>[
          inputText(
            keyboardType: TextInputType.emailAddress,
            label: "EMAIL, ADDRESS",
          ),
          inputText(
            label: "PASSWORD",
            oscureText: true,
          ),
        ],
      ),
    );
  }
}
