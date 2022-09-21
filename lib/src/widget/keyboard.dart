// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';
import 'package:flutter_latex/src/widget/view_insets.dart';

class LatexKeyboard extends StatelessWidget {
  @override
  LatexKeyboard({
    Key? key,
    this.onTextInput,
    this.onBackspace,
    this.value = false,
  }) : super(key: key);
  final bool value;
  final ValueSetter<String>? onTextInput;
  final VoidCallback? onBackspace;
  void textInputHandler(String text) => onTextInput!.call(text);
  void backspaceHandler() => onBackspace!.call();
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: value ? 200 : 0,
        color: value ? Colors.grey.shade200 : Colors.transparent,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [buildRowOne(), buildRowOne(), buildRowOne()],
        ));
  }

  Expanded buildRowOne() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "1",
          LatexText: "1",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }
  // void _insertText(String myText) {
  //   final text = controller.text;
  //   final textSelection = controller.selection;
  //   final newText = text.replaceRange(
  //     textSelection.start,
  //     textSelection.end,
  //     myText,
  //   );
  //   final myTextLength = myText.length;
  //   controller.text = newText;
  //   controller.selection = textSelection.copyWith(
  //     baseOffset: textSelection.start + myTextLength,
  //     extentOffset: textSelection.start + myTextLength,
  //   );
  // }

  // void _backspace() {
  //   final text = controller.text;
  //   final textSelection = controller.selection;
  //   final selectionLength = textSelection.end - textSelection.start;

  //   // There is a selection.
  //   if (selectionLength > 0) {
  //     final newText = text.replaceRange(
  //       textSelection.start,
  //       textSelection.end,
  //       '',
  //     );
  //     controller.text = newText;
  //     controller.selection = textSelection.copyWith(
  //       baseOffset: textSelection.start,
  //       extentOffset: textSelection.start,
  //     );
  //     return;
  //   }

  //   // The cursor is at the beginning.
  //   if (textSelection.start == 0) {
  //     return;
  //   }

  //   // Delete the previous character
  //   final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
  //   final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
  //   final newStart = textSelection.start - offset;
  //   final newEnd = textSelection.start;
  //   final newText = text.replaceRange(
  //     newStart,
  //     newEnd,
  //     '',
  //   );
  //   controller.text = newText;
  //   controller.selection = textSelection.copyWith(
  //     baseOffset: newStart,
  //     extentOffset: newStart,
  //   );
  // }

  // bool _isUtf16Surrogate(int value) {
  //   return value & 0xF800 == 0xD800;
  // }
}

// / / enum MathKeyboardType {
//   /// Keyboard for entering complete math expressions.
//   ///
//   /// This shows numbers + operators and a toggle button to switch to another
//   /// page with extended functions.
//   expression,

//   /// Keyboard for number input only.
//   numberOnly,
// }

/// Widget displaying the math keyboard.
// class MathKeyboard extends StatelessWidget {
//   /// Constructs a [MathKeyboard].
//   const MathKeyboard({
//     Key? key,
//     required this.controller,
//     this.variables = const [],
//     this.onSubmit,
//     this.insetsState,
//     this.slideAnimation,
//   }) : super(key: key);

//   /// The controller for editing the math field.
//   ///
//   /// Must not be `null`.
//   final TextEditingController controller;

//   /// The state for reporting the keyboard insets.
//   ///
//   /// If `null`, the math keyboard will not report about its bottom inset.
//   final MathKeyboardViewInsetsState? insetsState;

//   /// Animation that indicates the current slide progress of the keyboard.
//   ///
//   /// If `null`, the keyboard is always fully slided out.
//   final Animation<double>? slideAnimation;

//   /// The Variables a user can use.
//   final List<String> variables;

//   /// The Type of the Keyboard.
//   // final MathKeyboardType type;

//   /// Function that is called when the enter / submit button is tapped.
//   ///
//   /// Can be `null`.
//   final VoidCallback? onSubmit;

//   @override
//   Widget build(BuildContext context) {
//     final curvedSlideAnimation = CurvedAnimation(
//       parent: slideAnimation ?? AlwaysStoppedAnimation(1),
//       curve: Curves.ease,
//     );

//     return SlideTransition(
//       position: Tween<Offset>(
//         begin: const Offset(0, 1),
//         end: const Offset(0, 0),
//       ).animate(curvedSlideAnimation),
//       child: Stack(
//         children: [
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Material(
//               type: MaterialType.transparency,
//               child: ColoredBox(
//                 color: Colors.black,
//                 child: SafeArea(top: false, child: Container()),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
