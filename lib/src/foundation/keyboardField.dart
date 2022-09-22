// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class LatexKey extends StatelessWidget {
  const LatexKey({
    Key? key,
    required this.KeyboardText,
    required this.LatexText,
    required this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

  final String KeyboardText;
  final String LatexText;
  final ValueSetter<String> onTextInput;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.all(6),
      child: Material(
          color: Colors.grey.shade50,
          child: InkWell(
            onTap: () {
              onTextInput.call(LatexText);
            },
            child: Center(child: Text(KeyboardText)),
          )),
    ));
  }
}
