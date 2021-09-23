import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool oscureText;
  const inputText({
    Key? key,
    this.label = '',
    this.keyboardType = TextInputType.text,
    this.oscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.oscureText,
      decoration: InputDecoration(
        labelText: this.label,
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
