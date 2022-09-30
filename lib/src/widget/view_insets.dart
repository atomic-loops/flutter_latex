// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';
import 'package:flutter_latex/src/foundation/value.dart';
import 'package:flutter_latex/src/widget/covert_latex.dart';
import 'package:flutter_latex/src/widget/keyboard.dart';

class LatexKeyboardViewInsert extends StatefulWidget {
  LatexKeyboardViewInsert({
    Key? key,
    required this.child,
    // required this.value,
    // required this.controller,
    required this.node,
    // this.onChanged,
    required this.changeValue,
  }) : super(key: key);
  final Widget child;
  // final bool value;
  // final TextEditingController controller;

  final FocusNode node;

  // final void Function(String value)? onChanged;
  final ChangeValue changeValue;

  @override
  State<LatexKeyboardViewInsert> createState() =>
      _LatexKeyboardViewInsertState();
}

class _LatexKeyboardViewInsertState extends State<LatexKeyboardViewInsert> {
  @override
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      widget.child,
      Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: LatexKeyboard(
          // value: widget.value,
          onBackspace: () {
            widget.changeValue.backspace();
            setState(() {});
          },
          onTextInput: (String value) {
            widget.changeValue.insertText(value);
            setState(() {
              // widget.changeValue
              //     .updateLatex(widget.changeValue.controller.text);
            });
          },
          node: widget.node,
          changeValue: widget.changeValue,
        ),
      )
    ]);
  }
}
