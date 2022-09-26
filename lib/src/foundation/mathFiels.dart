// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LatexDisplay extends StatefulWidget {
  LatexDisplay({
    Key? key,
    this.onHightChange,
    required this.KeyboardText,
    required this.LatexText,
    required this.onTextInput,
    this.flex = 1,
  }) : super(key: key);

  var onHightChange;
  final String KeyboardText;
  final String LatexText;
  final ValueSetter<String> onTextInput;
  final int flex;

  @override
  State<LatexDisplay> createState() => _LatexDisplayState();
}

class _LatexDisplayState extends State<LatexDisplay> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.all(6),
      child: Material(
          color: Colors.grey.shade50,
          child: InkWell(
            onHighlightChanged: widget.onHightChange,
            onTap: () {
              widget.onTextInput.call(widget.LatexText);
            },
            child: Center(child: Text(widget.KeyboardText)),
          )),
    ));
  }
}
