// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_latex/flutter_latex.dart';
import 'package:flutter_latex/src/foundation/value.dart';

class LatexField extends StatefulWidget {
  LatexField(
      {Key? key,
      // required this.onChanged,

      required this.node,
      required this.changeValue,
      this.isVisible,
      this.decoration = const InputDecoration()})
      : super(key: key);

  final FocusNode node;
  final InputDecoration decoration;
  final void Function(bool value)? isVisible;
  final ChangeValue changeValue;
  // final void Function(String value)? onChanged;

  @override
  State<LatexField> createState() => _LatexFieldState();
}

class _LatexFieldState extends State<LatexField> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.node,
      onFocusChange: (value1) {
        setState(() {
          widget.isVisible!(value1);
        });
      },
      child: AnimatedContainer(
        // margin: EdgeInsets.only(bottom: expand ? 320 : 0),
        duration: Duration(milliseconds: 200),
        child: Column(
          children: [
            TextField(
              // onChanged: widget.onChanged,
              decoration: widget.decoration,
              readOnly: true,
              showCursor: true,
              minLines: 1,
              maxLines: 5,
              controller: widget.changeValue.controller,
            ),
            // SizedBox(
            //   height: 10,
            // ),
            // CovertLatex(
            //   laTeXCode: Text(widget.changeValue.latexString),
            // )
          ],
        ),
      ),
    );
  }
}
