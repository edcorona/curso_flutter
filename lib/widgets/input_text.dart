import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool oscureText, borderEnabled;
  const inputText({
    Key? key,
    this.label = '',
    this.keyboardType = TextInputType.text,
    this.oscureText = false,
    this.borderEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.keyboardType,
      obscureText: this.oscureText,
      decoration: InputDecoration(
        labelText: this.label,
        contentPadding: EdgeInsets.symmetric(vertical: 5),
        enabledBorder: this.borderEnabled
            ? UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              )
            : InputBorder.none,
        labelStyle: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
