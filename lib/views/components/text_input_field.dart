import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final Icon _prefixIcon;
  final String _hintText;
  final TextInputAction? _textInputAction;

  const TextInputField(
    {
      super.key,
      required this._prefixIcon,
      required this._hintText,
      this._textInputAction,
    }
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: _textInputAction,
      obscureText: _hintText == 'Password' ? true : false,
        decoration: InputDecoration(
          hintText: _hintText,
          filled: true,
          fillColor: Color(0xffF3F3F3),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 11, right: 3),
            child: _prefixIcon,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 24,
            minHeight: 24,
          ),
          suffixIcon: _hintText == 'Password'? Icon(Icons.visibility_off, color: Color(0xffA8A8A9),) : SizedBox.shrink(),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffA8A8A9),
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffA8A8A9),
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffA8A8A9),
              )
          ),
        ),
      );
  }
}
