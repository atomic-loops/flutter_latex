import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_latex/src/widget/covert_latex.dart';

class PreviewWidget extends StatelessWidget {
  final String value;

  const PreviewWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Container(
          height: 50,
          // color: Colors.amber,
          child: CovertLatex(
            laTeXCode: Text(value),
          ),
        ),
      ),
    );
  }
}
