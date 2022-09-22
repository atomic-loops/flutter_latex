import 'package:flutter/material.dart';
import 'package:flutter_latex/flutter_latex.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController _controller = TextEditingController();
  FocusNode node = FocusNode();
  @override
  String one = r"";
  bool status = false;
  Widget build(BuildContext context) {
    String two = one
        .replaceAll("\\(", "\$")
        .replaceAll("\\)", "\$")
        .replaceAll("<br>", "\n");

    return LatexKeyboardViewInsert(
      value: status,
      controller: _controller,
      onChanged: (value) {
        setState(() {
          one = value;
        });
      },
      node: node,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatexField(
              controller: _controller,
              node: node,
              isVisible: ((value) {
                setState(() {
                  status = value;
                });
              }),
            ),

            Text(one),
            CovertLatex(
              laTeXCode: Text(one),
            ),
            // TextField(),
            // Container(height: 100, color: status ? Colors.black : Colors.amber),
            // ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: 20,
            //     itemBuilder: ((context, index) {
            //       return InkWell(
            //         onTap: () {
            //           Get.to(DetailPage(data: two));
            //         },
            //         child: Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: CovertLatex(
            //             laTeXCode: Text(two),
            //           ),
            //         ),
            //       );
            //     })),
            // IconButton(
            //     onPressed: () {
            //       // node.addListener(() => print(node.hasFocus));
            //       setState(() {
            //         status = !status;
            //         // print(status);
            //       });
            //     },
            //     icon: Icon(Icons.safety_check))
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({
    super.key,
    required this.data,
  });
  String data;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CovertLatex(
          laTeXCode: Text(widget.data),
        ),
      ),
    );
  }
}
// _backspace(_controller) {
//   final text = _controller.text;
//   final textSelection = _controller.selection;
//   final selectionLength = textSelection.end - textSelection.start;

//   // There is a selection.
//   if (selectionLength > 0) {
//     final newText = text.replaceRange(
//       textSelection.start,
//       textSelection.end,
//       '',
//     );
//     _controller.text = newText;
//     _controller.selection = textSelection.copyWith(
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
//   _controller.text = newText;
//   _controller.selection = textSelection.copyWith(
//     baseOffset: newStart,
//     extentOffset: newStart,
//   );
// }

// bool _isUtf16Surrogate(int value) {
//   return value & 0xF800 == 0xD800;
// }

// _insertText(String myText, _controller) {
//   final text = _controller.text;
//   final textSelection = _controller.selection;
//   final newText = text.replaceRange(
//     textSelection.start,
//     textSelection.end,
//     myText,
//   );
//   final myTextLength = myText.length;
//   _controller.text = newText;
//   _controller.selection = textSelection.copyWith(
//     baseOffset: textSelection.start + myTextLength,
//     extentOffset: textSelection.start + myTextLength,
//   );
// }
