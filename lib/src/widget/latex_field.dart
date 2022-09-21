// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LatexField extends StatefulWidget {
  const LatexField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  State<LatexField> createState() => _LatexFieldState();
}

class _LatexFieldState extends State<LatexField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
    );
  }
}
