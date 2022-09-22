// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';
import 'package:flutter_latex/src/widget/covert_latex.dart';
import 'package:flutter_latex/src/widget/keyboard.dart';

class LatexKeyboardViewInsert extends StatefulWidget {
  LatexKeyboardViewInsert({
    Key? key,
    required this.child,
    required this.value,
    required this.controller,
    required this.node,
    this.onChanged,
  }) : super(key: key);
  final Widget child;
  final bool value;
  final TextEditingController controller;

  final FocusNode node;

  final void Function(String value)? onChanged;

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
          value: widget.value,
          onBackspace: () {
            _backspace();
          },
          onTextInput: (String value) {
            _insertText(value);
          },
          node: widget.node,
        ),
      )
    ]);
  }

  void _insertText(String myText) {
    final text = widget.controller.text;
    final textSelection = widget.controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    widget.controller.text = newText;
    widget.controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );

    widget.onChanged?.call(widget.controller.text);
  }

  void _backspace() {
    final text = widget.controller.text;
    final textSelection = widget.controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      widget.controller.text = newText;
      widget.controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    widget.controller.text = newText;
    widget.controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
    widget.onChanged?.call(widget.controller.text);
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }
}
