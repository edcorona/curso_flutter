import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input_text.dart';
import 'package:flutter_api_rest/utils/responsive.dart';

class LoginForm extends StatefulWidget {
  @override
  _loginFormState createState() => _loginFormState();
}

class _loginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

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
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black12,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: inputText(
                    label: "PASSWORD",
                    oscureText: true,
                    borderEnabled: false,
                  ),
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: responsive.dp(5)),
          SizedBox(
            width: double.infinity,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              onPressed: () {},
              child: Text(
                "Sing in",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.pinkAccent,
            ),
          ),
          SizedBox(height: responsive.dp(2)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "New to friendly Desi?",
                style: TextStyle(
                  fontSize: responsive.dp(1.6),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: responsive.dp(1.6),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
