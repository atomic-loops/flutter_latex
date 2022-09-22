// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LatexField extends StatefulWidget {
  LatexField(
      {Key? key, required this.controller, required this.node, this.isVisible})
      : super(key: key);
  final TextEditingController controller;
  final FocusNode node;

  final void Function(bool value)? isVisible;
  @override
  State<LatexField> createState() => _LatexFieldState();
}

class _LatexFieldState extends State<LatexField> {
  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: widget.node,
      onFocusChange: (value) {
        setState(() {
          widget.isVisible!(value);
        });
      },
      child: TextField(
        readOnly: true,
        showCursor: true,
        minLines: 1,
        maxLines: 5,
        controller: widget.controller,
      ),
    );
  }
}
