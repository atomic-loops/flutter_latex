// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_latex/src/foundation/keyboardField.dart';
import 'package:flutter_latex/src/foundation/mathFiels.dart';
import 'package:flutter_latex/src/foundation/value.dart';
import 'package:flutter_latex/src/widget/covert_latex.dart';

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
  bool isFuncation = false;

  void textInputHandler(String text) => widget.onTextInput.call(text);

  void backspaceHandler() => widget.onBackspace.call();

  // String value = "Long press on latex to preview";

  // bool isHighLight = false;

  // bool isLong = false;
  bool aplpha = true;
  bool betaGamma = false;
  bool delimiter = true;
  bool elnx = false;
  bool x2 = false;
  bool fx = false;
  bool intdx = false;
  bool sin = false;
  bool matrix = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.changeValue.addListener(() {
      setState(() {});
    });
    setState(() {});
  }

  Widget build(BuildContext context) {
    return AnimatedContainer(
        height: widget.changeValue.isOpen == true ? 350 : 0,
        duration: const Duration(milliseconds: 200),
        // color: widget.changeValue.isOpen == true
        //     ? Colors.grey.shade200
        //     : Colors.transparent,
        child: widget.changeValue.isOpen == true
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Expanded(child: Func()),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Material(
                        // color: widget.changeValue.isOpen
                        //     ? Colors.grey.shade200
                        //     : Colors.transparent,
                        child: CovertLatex(
                          laTeXCode: Text(widget.changeValue.previewString),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      // flex: 1,
                      child: Func(
                          aplpha: () {
                            if (aplpha == false) {
                              setState(() {
                                aplpha = true;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          x2: () {
                            if (x2 == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = true;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          sin: () {
                            if (sin == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = true;
                                matrix = false;
                              });
                            }
                          },
                          fx: () {
                            if (fx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = true;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          elnx: () {
                            if (elnx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = true;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          intdx: () {
                            if (intdx == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = true;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          matrix: () {
                            if (matrix == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = false;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = true;
                              });
                            }
                          },
                          betaGamma: () {
                            if (betaGamma == false) {
                              setState(() {
                                aplpha = false;
                                betaGamma = true;
                                delimiter = true;
                                elnx = false;
                                x2 = false;
                                fx = false;
                                intdx = false;
                                sin = false;
                                matrix = false;
                              });
                            }
                          },
                          delimiter: () {
                            setState(() {
                              delimiter = !delimiter;
                            });
                          },
                          aplphaC:
                              aplpha ? Colors.orange : Colors.grey.shade100,
                          x2C: x2 ? Colors.orange : Colors.grey.shade100,
                          sinC: sin ? Colors.orange : Colors.grey.shade100,
                          fxC: fx ? Colors.orange : Colors.grey.shade100,
                          elnxC: elnx ? Colors.orange : Colors.grey.shade100,
                          intdxC: intdx ? Colors.orange : Colors.grey.shade100,
                          matrixC:
                              matrix ? Colors.orange : Colors.grey.shade100,
                          betaGammaC:
                              betaGamma ? Colors.orange : Colors.grey.shade100,
                          delimiterC: delimiter
                              ? Colors.orange
                              : Colors.grey.shade100)),
                  Expanded(
                    flex: 4,
                    child: Body(
                      onBackspace: backspaceHandler,
                      onTextInput: textInputHandler,
                      node: widget.node,

                      alpha: aplpha, x2: x2, changeValue: widget.changeValue,
                      idTexOn: delimiter,

                      // changeValue: widget.changeValue
                    ),
                  ),
                ],
              )

            // ? Column(
            //     children: [],
            //     // if(){}else if(){}else if(){}else if(){}
            //   )
            // ? Column(
            //     // mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // Expanded(child: Func()),
            //       // Expanded(
            //       //   flex: 2,
            //       //   child: Padding(
            //       //     padding: const EdgeInsets.all(6.0),
            //       //     child: Align(
            //       //       alignment: Alignment.centerLeft,
            //       //       child: Material(
            //       //         color: widget.changeValue.isOpen
            //       //             ? Colors.grey.shade200
            //       //             : Colors.transparent,
            //       //         child: CovertLatex(
            //       //           laTeXCode: Text(value),
            //       //         ),
            //       //       ),
            //       //     ),
            //       //   ),
            //       // ),
            //       // Expanded(child: ),
            //       number(),
            //       latexkey1(),
            //       latexkey1(),
            //       latexkey1(),
            //       funcationKey(),
            //     ],
            //   )
            // : Column(
            //     // mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // Expanded(
            //       //   flex: 2,
            //       //   child: Padding(
            //       //     padding: const EdgeInsets.all(6.0),
            //       //     child: Align(
            //       //       alignment: Alignment.centerLeft,
            //       //       child: Material(
            //       //         color: widget.changeValue.isOpen
            //       //             ? Colors.grey.shade200
            //       //             : Colors.transparent,
            //       //         child: CovertLatex(
            //       //           laTeXCode: Text(value),
            //       //         ),
            //       //       ),
            //       //     ),
            //       //   ),
            //       // ),
            //       // Expanded(child: Func()),
            //       number(),
            //       alpha1(),
            //       alpha2(),
            //       alpha3(),
            //       funcationKey(),
            //     ],
            //   )
            : Container());
    ;
  }
}

class Body extends StatefulWidget {
  Body(
      {Key? key,
      required this.changeValue,
      required this.onTextInput,
      required this.onBackspace,
      required this.node,
      this.idTexOn = true,
      this.alpha = true,
      this.x2 = false})
      : super(key: key);
  final ChangeValue changeValue;
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;
  final FocusNode node;
  bool idTexOn;
  bool alpha = true;
  bool x2 = false;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void textInputHandler(String text) => widget.onTextInput.call(text);

  void backspaceHandler() => widget.onBackspace.call();
  bool isCapital = true;

  bool isHighLight = false;
  // String value = "";
  bool isLong = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade100,
      child: SafeArea(
        top: false,
        child: Expanded(
          child: Column(
            children: [
              if (widget.alpha == true) ...[alphaKeyboard()] else ...[x2()]
            ],
          ),
        ),
      ),
    );
  }

  alphaKeyboard() {
    return Expanded(
      child: Column(
        children: [
          number(),
          alpha1(),
          alpha2(),
          alpha3(),
          funcationKey(),
        ],
      ),
    );
  }

  x2() {
    return Expanded(
      child: Column(
        children: [
          number(),
          latexkey1(),
          latexkey1(),
          latexkey1(),
          funcationKey(),
        ],
      ),
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
          onTextInput: textInputHandler, isTexOn: widget.idTexOn,
        ),
        LatexKey(
          KeyboardText: "2",
          isTexOn: widget.idTexOn,
          // LatexText: "2",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "3",
          isTexOn: widget.idTexOn,
          // LatexText: "3",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "4",
          isTexOn: widget.idTexOn,
          // LatexText: "4",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "5",
          isTexOn: widget.idTexOn,
          // LatexText: "5",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "6",
          isTexOn: widget.idTexOn,
          // LatexText: "6",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "7",
          isTexOn: widget.idTexOn,
          // LatexText: "7",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "8",
          isTexOn: widget.idTexOn,
          // LatexText: "8",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "9",
          // LatexText: "9",
          isTexOn: widget.idTexOn,
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: "0",
          isTexOn: widget.idTexOn,
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
            setState(() {
              isCapital = !isCapital;
            });
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
          isTexOn: widget.idTexOn,
          KeyboardText: "start",
          // LatexText: r"$",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
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
                widget.changeValue
                    .previewValue(r"\frac{1}{2} $\rightarrow$ $\frac{1}{2}$");
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
          isTexOn: widget.idTexOn,
          fontSize: 20,
          KeyboardText: r"$\pi$",
          // LatexText: r"\pi",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
          fontSize: 20,
          KeyboardText: r"$\theta$",
          // LatexText: r"\theta",
          onTextInput: textInputHandler,
        ),
        LatexKey(
          isTexOn: widget.idTexOn,
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
                widget.changeValue
                    .previewValue(r"\sqrt[1]{2} $\rightarrow$ $\sqrt[1]{2}$");
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
          isTexOn: widget.idTexOn,
        ),
        LatexKey(
          KeyboardText: r"$\Box$",
          isTexOn: widget.idTexOn,
          // LatexText: r"\Box",
          onTextInput: textInputHandler,
        ),
      ],
    ));
  }

  void change() {
    setState(() {
      widget.changeValue.previewValue("Long press on latex to preview");
      isLong = false;
    });
  }

  funcationKey() {
    return Expanded(
        child: Row(
      children: [
        LatexKey(
          KeyboardText: r".",
          isTexOn: widget.idTexOn,
          onTextInput: textInputHandler,
        ),
        LatexKey(
          KeyboardText: r",",
          // LatexText: r"\Box",
          isTexOn: widget.idTexOn,
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
          flex: 1,
          icon: Icons.skip_next,
          tap: () {
            textInputHandler("\n");
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
