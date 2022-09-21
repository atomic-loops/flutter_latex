// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';
import 'package:flutter_latex/src/widget/keyboard.dart';

class LatexKeyboardViewInsert extends StatelessWidget {
  LatexKeyboardViewInsert({
    Key? key,
    required this.child,
    required this.value,
    // required this.controller,
  }) : super(key: key);
  final Widget child;
  final bool value;
  // final TextEditingController controller;
  @override
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      child,
      Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: LatexKeyboard(
          value: value,
          // onBackspace: () {},
          // onTextInput: (String value) {},
        ),
      )
    ]);
  }
}
