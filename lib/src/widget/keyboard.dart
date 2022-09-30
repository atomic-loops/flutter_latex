// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';

import 'package:flutter_latex/src/foundation/value.dart';

class LatexKeyboard extends StatefulWidget {
  @override
  LatexKeyboard({
    Key? key,
    // required this.value,
    required this.onTextInput,
    required this.onBackspace,
    required this.node,
    required this.changeValue,
  }) : super(key: key);
  // final bool value1;
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;
  final FocusNode node;
  final ChangeValue changeValue;

  @override
  State<LatexKeyboard> createState() => _LatexKeyboardState();
}

class _LatexKeyboardState extends State<LatexKeyboard> {
  @override
  bool isCapital = true;

  bool isFuncation = false;

  void textInputHandler(String text) => widget.onTextInput.call(text);

  void backspaceHandler() => widget.onBackspace.call();

  String value = "Long press on latex to preview";

  bool isHighLight = false;

  bool isLong = false;

  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: widget.changeValue.isOpen == true ? 320 : 0,
        duration: const Duration(milliseconds: 200),
        color: widget.changeValue.isOpen == true
            ? Colors.grey.shade200
            : Colors.transparent,
        child: SafeArea(
          top: false,
          child: widget.changeValue.isOpen == true
              ? isFuncation
                  ? Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Expanded(child: Func()),
                        // Expanded(
                        //   flex: 2,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(6.0),
                        //     child: Align(
                        //       alignment: Alignment.centerLeft,
                        //       child: Material(
                        //         color: widget.changeValue.isOpen
                        //             ? Colors.grey.shade200
                        //             : Colors.transparent,
                        //         child: CovertLatex(
                        //           laTeXCode: Text(value),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Expanded(child: ),
                        number(),
                        latexkey1(),
                        latexkey1(),
                        latexkey1(),
                        funcationKey(),
                      ],
                    )
                  : Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Expanded(
                        //   flex: 2,
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(6.0),
                        //     child: Align(
                        //       alignment: Alignment.centerLeft,
                        //       child: Material(
                        //         color: widget.changeValue.isOpen
                        //             ? Colors.grey.shade200
                        //             : Colors.transparent,
                        //         child: CovertLatex(
                        //           laTeXCode: Text(value),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Expanded(child: Func()),
                        number(),
                        alpha1(),
                        alpha2(),
                        alpha3(),
                        funcationKey(),
                      ],
                    )
              : Container(),
        ));
    ;
  }

  alphaKeyboard() {
    return Column(
      children: [
        number(),
        alpha1(),
        alpha2(),
        alpha3(),
        funcationKey(),
      ],
    );
  }

  Expanded number() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          // onLongPress: () {},

          KeyboardText: "1",
          // LatexText: "1",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "2",
          // LatexText: "2",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "3",
          // LatexText: "3",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "4",
          // LatexText: "4",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "5",
          // LatexText: "5",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "6",
          // LatexText: "6",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "7",
          // LatexText: "7",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "8",
          // LatexText: "8",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "9",
          // LatexText: "9",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "0",
          // LatexText: "0",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  Expanded alpha1() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: isCapital ? "Q" : "q",
          // LatexText: isCapital ? "Q" : "q",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "W" : "w",
          // LatexText: isCapital ? "W" : "w",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "E" : "e",
          // LatexText: isCapital ? "E" : "e",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "R" : "r",
          // LatexText: isCapital ? "R" : "r",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "T" : "t",
          //  LatexText: isCapital ? "T" : "t",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "Y" : "y",
          // LatexText: isCapital ? "Y" : "y",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "U" : "u",
          // LatexText: isCapital ? "U" : "u",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "I" : "i",
          // LatexText: isCapital ? "I" : "i",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "O" : "o",
          // LatexText: isCapital ? "O" : "o",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "P" : "p",
          // /  LatexText: isCapital ? "P" : "p",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  alpha3() {
    return Expanded(
        child: Row(
      children: [
        ButtonKey(
          color: Colors.white,
          flex: 2,
          iconsColors: isCapital ? Colors.blue : Colors.black,
          icon: Icons.upgrade,
          tap: () {
            // setState(() {
            isCapital = !isCapital;
            // });
          },
        ),
        LatexKey(
          KeyboardText: isCapital ? "Z" : "z",
          // LatexText: isCapital ? "Z" : "z",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "X" : "x",
          // LatexText: isCapital ? "X" : "x",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "C" : "c",
          // LatexText: isCapital ? "C" : "c",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "V" : "v",
          // LatexText: isCapital ? "V" : "v",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "B" : "b",
          // LatexText: isCapital ? "B" : "b",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "N" : "n",
          // LatexText: isCapital ? "N" : "n",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: isCapital ? "M" : "m",
          // LatexText: isCapital ? "M" : "m",
          onTextInput: textInputHandler,
        ),
        ButtonKey(
          color: Colors.blue,
          flex: 2,
          icon: Icons.done,
          iconsColors: Colors.white,
          tap: () {
            widget.node.unfocus();
          },
        ),
      ],
    ));
  }

  Expanded alpha2() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          LatexKey(
            KeyboardText: isCapital ? "A" : "a",
            // LatexText: isCapital ? "A" : "a",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "S" : "s",
            // LatexText: isCapital ? "S" : "s",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "D" : "d",
            // LatexText: isCapital ? "D" : "d",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "F" : "f",
            // LatexText: isCapital ? "F" : "f",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "G" : "g",
            // LatexText: isCapital ? "G" : "g",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "H" : "h",
            //  LatexText: isCapital ? "H" : "h",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "J" : "j",
            // LatexText: isCapital ? "J" : "j",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "K" : "k",
            // LatexText: isCapital ? "K" : "k",
            onTextInput: textInputHandler,
          ),
          LatexKey(
            KeyboardText: isCapital ? "L" : "l",
            // LatexText: isCapital ? "L" : "l",
            onTextInput: textInputHandler,
          ),
        ],
      ),
    ));
  }

  latexkey1() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: "start",
          // LatexText: r"$",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                value = r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$";
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            // else {
            // Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          fontSize: 12,
          KeyboardText: r"$\frac{\square}{\square}$",
          // LatexText: r"\frac{}{}",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          fontSize: 20,
          KeyboardText: r"$\pi$",
          // LatexText: r"\pi",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          fontSize: 20,
          KeyboardText: r"$\theta$",
          // LatexText: r"\theta",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          fontSize: 20,
          KeyboardText: r"$\alpha$",
          // LatexText: r"\alpha",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          onLongPress: () {
            setState(() {
              isLong = true;
            });
          },
          onHightChange: (v) {
            setState(() {
              isHighLight = v;
            });
            if (isHighLight == true) {
              setState(() {
                value = r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$";
              });
            } else {
              Future.delayed(const Duration(seconds: 2), () {
                change();
              });
            }
            //else {
            //   Timer(Duration(seconds: 1), change());
            // }
            print(isHighLight);
          },
          fontSize: 12,
          KeyboardText: r"$\sqrt[\square]{\square}$",
          // LatexText: r"\sqrt[\square]{\square}",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: r"$\Box$",
          // LatexText: r"\Box",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  void change() {
    setState(() {
      value = "Long press on latex to preview";
      isLong = false;
    });
  }

  funcationKey() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: r".",
          // LatexText: r"\Box",
          onTextInput: textInputHandler,
        ),
        // ButtonKey(
        //   color: Colors.white,
        //   flex: 2,
        //   iconsColors: Colors.black,
        //   icon: Icons.functions,
        //   tap: () {
        //     setState(() {
        //       isFuncation = !isFuncation;
        //     });
        //   },
        // ),
        ButtonKey(
          color: Colors.white,
          flex: 5,
          // icon: Icons.next_plan,
          tap: () {
            textInputHandler(" ");
          },
        ),
        ButtonKey(
          color: Colors.white,
          flex: 2,
          // onLongPress: () {},
          icon: Icons.backspace,
          tap: () {
            widget.onBackspace.call();
          },
        ),
      ],
    ));
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.changeValue,
  }) : super(key: key);
  final ChangeValue changeValue;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
