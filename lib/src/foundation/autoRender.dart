// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_latex/flutter_latex.dart';
import 'package:flutter_latex/src/widget/covert_latex.dart';
import 'package:flutter_latex/src/widget/kat_latex.dart';

class AutoRander extends StatelessWidget {
  String latex;
  AutoRander({
    Key? key,
    required this.latex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (latex.contains(r"\text") || latex.contains(r"\begin")) {
      return KatLatex(
          laTeXCode: Text(latex
              .replaceAll("\\(", "\$")
              .replaceAll("\\)", "\$")
              .replaceAll("<br>", "\n\n")));
    } else {
      return CovertLatex(
        textStyle: TextStyle(fontSize: 20),
        laTeXCode: Text(
          latex
              .replaceAll("\\(", "\$")
              .replaceAll("\\)", "\$")
              .replaceAll("<br>", "\n\n"),
          style: TextStyle(fontSize: 20),
        ),
      );
    }
  }
}
