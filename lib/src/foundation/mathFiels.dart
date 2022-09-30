// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_latex/flutter_latex.dart';

// class LatexDisplay extends StatefulWidget {
//   LatexDisplay({
//     Key? key,
//     this.onHightChange,
//     required this.KeyboardText,
//     required this.LatexText,
//     required this.onTextInput,
//     this.flex = 1,
//   }) : super(key: key);

//   var onHightChange;
//   final String KeyboardText;
//   final String LatexText;
//   final ValueSetter<String> onTextInput;
//   final int flex;

//   @override
//   State<LatexDisplay> createState() => _LatexDisplayState();
// }

// class _LatexDisplayState extends State<LatexDisplay> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Padding(
//       padding: EdgeInsets.all(6),
//       child: Material(
//           color: Colors.grey.shade50,
//           child: InkWell(
//             onHighlightChanged: widget.onHightChange,
//             onTap: () {
//               widget.onTextInput.call(widget.LatexText);
//             },
//             child: Center(child: Text(widget.KeyboardText)),
//           )),
//     ));
//   }
// }

class Func extends StatelessWidget {
  var aplpha;

  var x2;

  var sin;

  var fx;

  var elnx;

  var intdx;

  var matrix;

  var betaGamma;

  var delimiter;

  Func({
    Key? key,
    required this.aplpha,
    required this.x2,
    required this.sin,
    required this.fx,
    required this.elnx,
    required this.intdx,
    required this.matrix,
    required this.betaGamma,
    required this.delimiter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FunctionButton(
          onTab: aplpha,
          KeyboardText: "abc",
          fontSize: 20,
        ),
        FunctionButton(
          onTab: x2,
          KeyboardText: r"$x^2$",
          fontSize: 20,
        ),
        FunctionButton(onTab: sin, KeyboardText: r"$sin{x}$"),
        FunctionButton(
          onTab: fx,
          KeyboardText: r"$f(x)$",
          fontSize: 20,
        ),
        FunctionButton(
          onTab: elnx,
          KeyboardText: r"$e^{\ln(x)}$",
          fontSize: 12,
        ),
        FunctionButton(
          onTab: intdx,
          KeyboardText: r"$\int{dx}$",
          fontSize: 12,
        ),
        FunctionButton(
          onTab: matrix,
          KeyboardText: r"$\begin{bmatrix}  x\\y  \end{bmatrix}$",
          fontSize: 12,
        ),
        FunctionButton(
          onTab: betaGamma,
          KeyboardText: r"$\alpha\beta\gamma$",
          fontSize: 12,
        ),
        FunctionButton(
          onTab: delimiter,
          KeyboardText: r"$",
          fontSize: 20,
        ),
      ],
    );
  }
}
