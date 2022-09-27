// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_latex/flutter_latex.dart';

class LatexField extends StatefulWidget {
  LatexField(
      {Key? key,
      required this.controller,
      required this.node,
      this.isVisible,
      this.decoration = const InputDecoration()})
      : super(key: key);
  final TextEditingController controller;
  final FocusNode node;
  final InputDecoration decoration;
  final void Function(bool value)? isVisible;
  @override
  State<LatexField> createState() => _LatexFieldState();
}

bool expand = false;

class _LatexFieldState extends State<LatexField> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.node,
      onFocusChange: (value) {
        setState(() {
          widget.isVisible!(value);
          expand = value;
        });
      },
      child: AnimatedContainer(
        margin: EdgeInsets.only(bottom: expand ? 320 : 0),
        duration: Duration(milliseconds: 200),
        child: Column(
          children: [
            TextField(
              decoration: widget.decoration,
              readOnly: true,
              showCursor: true,
              minLines: 1,
              maxLines: 5,
              controller: widget.controller,
            ),
            SizedBox(
              height: 10,
            ),
            CovertLatex(
              laTeXCode: Text(widget.controller.text),
            )
          ],
        ),
      ),
    );
  }
}
