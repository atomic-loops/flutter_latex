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
  final changeValue = ChangeValue();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeValue;
    changeValue.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    changeValue.dispose();
  }

  FocusNode node = FocusNode();
  @override
  List data = [
    r"ถ้า \(\mathrm{4 x=6 y=3 z}\) และ \(\mathrm{x+y+z=(p)(y)}\) แล้ว จงหาค่า \(\mathrm{p}\)",
    r"เนื่องจากผลไม้ที่ถูกที่สุดราคา \(12\) บาท ฉะนั้นเขาจะต้องเหลือเงินจากการซื้อผลไม้ได้สูงสุด \(11\) บาท <br>ดังนั้น เราจึงแยกคิดเป็น \(6\) กรณี ดังนี้<br>\( \small \begin{array}{rcl} &\text{กรณีที่ 1}& \text{ซื้อแตงโม 5 ลูก เป็นเงิน 115 บาท พอดี} \\&\text{กรณีที่ 2}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{0 ลูก} = \begin{rcases} \begin{cases} \text{0 ลูก} &\longrightarrow& \text{9 ลูก} &\longrightarrow& \text{7 บาท} \\\text{1 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{1 บาท} \\\text{2 ลูก} &\longrightarrow& \text{4 ลูก} &\longrightarrow& \text{7 บาท} \\\text{3 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{1 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 3}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{1 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{8 บาท} \\\text{1 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{2 บาท} \\\text{2 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{8 บาท} \\\text{3 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{2 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 4}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{2 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{9 บาท} \\\text{1 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{3 บาท} \\\text{2 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{9 บาท} \end{cases} \end{rcases} \text{3 วิธี} \\&\text{กรณีที่ 5}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{3 ลูก} = \begin{rcases} \begin{cases}\text{1 ลูก} &\longrightarrow& \text{1 ลูก} &\longrightarrow& \text{4 บาท} \\\text{0 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{10 บาท} \end{cases} \end{rcases} \text{2 วิธี} \\&\text{กรณีที่ 6}& \text{ซื้อแตงโม 4 ลูก ขนุน 0 ลูก สาลี่ 1 ลูก เหลือเงิน 11 บาท} \\&& \text{รวม = 1+4+4+3+2+1 = 15 วิธี} \end{array} \)<br>(ตอบ \(15\))",
    r"ถ้า \(27^{\mathrm{x}}=\left(\frac{1}{81}\right)^{\mathrm{y}}=9\) แล้ว \(3 \mathrm{x}-2 \mathrm{y}\) มีค่าเท่าใด",
    r"\(\sqrt{3+\sqrt{5}}-\sqrt{3-\sqrt{5}}\) เท่ากับข้อใดต่อไปนี้",
    r"ถ้า \(\mathrm{49=a^{6}}\) และ \(\mathrm{169=b^{2}}\) แล้ว \(4,459\) มีค่าเท่าใด",
    r"กำหนดให้ \(\mathrm{A}=1+\frac{1}{6}+\frac{1}{12}+\frac{1}{20}+\frac{1}{30}+\frac{1}{42}+\frac{1}{56}\) แล้ว \((8\mathrm{~A}+3)^{2}\) มีค่าเท่าใด",
    r" <br>\(\frac{1}{\sqrt{2}+1}+\frac{1}{\sqrt{3}+\sqrt{2}}+\frac{1}{\sqrt{4}+\sqrt{3}}+\frac{1}{\sqrt{5}+\sqrt{4}}+\ldots+\frac{1}{\sqrt{100}-\sqrt{99}}\)<br>มีค่าเท่าใด",
    r"\(\mathrm{PQRS}\) เป็นสี่เหลี่ยมจัตุรัสแนบในวงกลมยาวด้านละ \(6 \mathrm{~cm}\) พื้นที่ส่วนที่แรเงามีค่าเท่าใด",
    r"จำนวนเต็มใดที่มากที่สุด และสอดคล้องกับอสมการ \(\mathrm{\frac{x}{8}-\frac{5 x+8}{6}>\frac{2 x-9}{3}}\)",
    r"ถ้า \(3 \mathrm{x}+5=25-4 \mathrm{y}\) และ \(\mathrm{x}+\mathrm{y}=4.5\) แล้ว \(\mathrm{x}+2 \mathrm{y}\) มีค่าเท่าใด",
    r"ถ้า \(\mathrm{x^{3}+\frac{1}{x^{3}}}=52\) แล้ว \(\mathrm{x^{2}+\frac{1}{x^{2}}}\) เท่ากับข้อใดต่อไปนี้",
    r"ในครึ่งวงกลมที่มีรัศมียาว \(5 \sqrt{5} \mathrm{~cm}\) มีรูป \(\square \mathrm{PQRS}\) แนบด้านใน ดังรูป โดยด้านยาวยาวเป็น \(4\)เท่าของด้านกว้าง จงหาพื้นที่ \(\square \mathrm{PQRS}\)",
    r"\(\frac{4}{1+\sqrt{2}-\sqrt{3}}\) เท่ากับข้อใดต่อไปนี้",
    r"<br>\(\frac{1}{1+2^{-\frac{1}{3}}+2^{\frac{1}{3}}}+\frac{1}{1+2^{-\frac{1}{3}}+2^{-\frac{2}{3}}}+\frac{1}{1+2^{\frac{1}{3}}+2^{\frac{2}{3}}}\) เท่ากับข้อใดต่อไปนี้",
    r"จากรูป พ.ท. ที่แรเงามีค่าเท่ากับกี่ตารางหน่วย",
    r"จากรูปมุม \(\mathrm{x}\) เท่ากับกี่องศา",
    r"กำหนดให้ \(3 \sin \mathrm{A}=4 \cos \mathrm{A}\) แล้ว \(\sin ^{2} \mathrm{~A}-\cos ^{2} \mathrm{~A}\) มีค่าเท่าใด",
    r"กล่องทึบแสงใบหนึ่งบรรจุลูกแก้วขนาดเดียวกันจำนวน \(15\) ลูก มีสีดำ \(3\) ลูก สีขาว \(5\) ลูก นอกนั้นเป็นสีแดง สุ่มหยิบลูกแก้วขึ้นมา \(2\)ลูก โดยหยิบทีละลูกแล้วไม่ใส่คืน ความน่าจะเป็นที่จะหยิบได้ลูกสีแดงทั้งสองลูกเป็นเท่าใด",
    r"กำหนดให้ \(4 \mathrm{x}^{2}-12 \mathrm{xy}+9 \mathrm{y}^{2}=0\) จงหาค่าของ \(\frac{2 \mathrm{x}}{\mathrm{y}}\)",
    r"ถ้า \(\mathrm{A}\) และ \(\mathrm{B}\) เป็นรากของสมการ \(\mathrm{2 x^{2}-6 x+4=0}\) แล้วค่าของ  \(\left(\mathrm{A}^{3}+\mathrm{B}^{3}\right)\left(\mathrm{A}^{2}+\mathrm{B}^{2}\right)\) มีค่าเท่าใด"
  ];
  String one = r"\(\frac{1^2}{\sqrt{1}}\)";
  bool status = false;
  Widget build(BuildContext context) {
    String two = one
        .replaceAll("\\(", "\$")
        .replaceAll("\\)", "\$")
        .replaceAll("<br>", "\n");

    return LatexKeyboardViewInsert(
      node: node,
      changeValue: changeValue,
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LatexField(
            node: node,
            isVisible: ((value) {
              setState(() {
                changeValue.updateValue(value);
              });
            }),
            changeValue: changeValue,
          ),
          CovertLatex(laTeXCode: Text(changeValue.controller.text))
        ],
      )),
    );
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({
    super.key,
    // required this.data,
  });
  // String data;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List data = [
    r"ถ้า \(\mathrm{4 x=6 y=3 z}\) และ \(\mathrm{x+y+z=(p)(y)}\) แล้ว จงหาค่า \(\mathrm{p}\)",
    r"เนื่องจากผลไม้ที่ถูกที่สุดราคา \(12\) บาท ฉะนั้นเขาจะต้องเหลือเงินจากการซื้อผลไม้ได้สูงสุด \(11\) บาท <br>ดังนั้น เราจึงแยกคิดเป็น \(6\) กรณี ดังนี้<br>\( \small \begin{array}{rcl} &\text{กรณีที่ 1}& \text{ซื้อแตงโม 5 ลูก เป็นเงิน 115 บาท พอดี} \\&\text{กรณีที่ 2}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{0 ลูก} = \begin{rcases} \begin{cases} \text{0 ลูก} &\longrightarrow& \text{9 ลูก} &\longrightarrow& \text{7 บาท} \\\text{1 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{1 บาท} \\\text{2 ลูก} &\longrightarrow& \text{4 ลูก} &\longrightarrow& \text{7 บาท} \\\text{3 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{1 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 3}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{1 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{8 บาท} \\\text{1 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{2 บาท} \\\text{2 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{8 บาท} \\\text{3 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{2 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 4}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{2 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{9 บาท} \\\text{1 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{3 บาท} \\\text{2 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{9 บาท} \end{cases} \end{rcases} \text{3 วิธี} \\&\text{กรณีที่ 5}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{3 ลูก} = \begin{rcases} \begin{cases}\text{1 ลูก} &\longrightarrow& \text{1 ลูก} &\longrightarrow& \text{4 บาท} \\\text{0 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{10 บาท} \end{cases} \end{rcases} \text{2 วิธี} \\&\text{กรณีที่ 6}& \text{ซื้อแตงโม 4 ลูก ขนุน 0 ลูก สาลี่ 1 ลูก เหลือเงิน 11 บาท} \\&& \text{รวม = 1+4+4+3+2+1 = 15 วิธี} \end{array} \)<br>(ตอบ \(15\))",
    r"ถ้า \(27^{\mathrm{x}}=\left(\frac{1}{81}\right)^{\mathrm{y}}=9\) แล้ว \(3 \mathrm{x}-2 \mathrm{y}\) มีค่าเท่าใด",
    r"\(\sqrt{3+\sqrt{5}}-\sqrt{3-\sqrt{5}}\) เท่ากับข้อใดต่อไปนี้",
    r"ถ้า \(\mathrm{49=a^{6}}\) และ \(\mathrm{169=b^{2}}\) แล้ว \(4,459\) มีค่าเท่าใด",
    r"กำหนดให้ \(\mathrm{A}=1+\frac{1}{6}+\frac{1}{12}+\frac{1}{20}+\frac{1}{30}+\frac{1}{42}+\frac{1}{56}\) แล้ว \((8\mathrm{~A}+3)^{2}\) มีค่าเท่าใด",
    r" <br>\(\frac{1}{\sqrt{2}+1}+\frac{1}{\sqrt{3}+\sqrt{2}}+\frac{1}{\sqrt{4}+\sqrt{3}}+\frac{1}{\sqrt{5}+\sqrt{4}}+\ldots+\frac{1}{\sqrt{100}-\sqrt{99}}\)<br>มีค่าเท่าใด",
    r"\(\mathrm{PQRS}\) เป็นสี่เหลี่ยมจัตุรัสแนบในวงกลมยาวด้านละ \(6 \mathrm{~cm}\) พื้นที่ส่วนที่แรเงามีค่าเท่าใด",
    r"จำนวนเต็มใดที่มากที่สุด และสอดคล้องกับอสมการ \(\mathrm{\frac{x}{8}-\frac{5 x+8}{6}>\frac{2 x-9}{3}}\)",
    r"ถ้า \(3 \mathrm{x}+5=25-4 \mathrm{y}\) และ \(\mathrm{x}+\mathrm{y}=4.5\) แล้ว \(\mathrm{x}+2 \mathrm{y}\) มีค่าเท่าใด",
    r"ถ้า \(\mathrm{x^{3}+\frac{1}{x^{3}}}=52\) แล้ว \(\mathrm{x^{2}+\frac{1}{x^{2}}}\) เท่ากับข้อใดต่อไปนี้",
    r"ในครึ่งวงกลมที่มีรัศมียาว \(5 \sqrt{5} \mathrm{~cm}\) มีรูป \(\square \mathrm{PQRS}\) แนบด้านใน ดังรูป โดยด้านยาวยาวเป็น \(4\)เท่าของด้านกว้าง จงหาพื้นที่ \(\square \mathrm{PQRS}\)",
    r"\(\frac{4}{1+\sqrt{2}-\sqrt{3}}\) เท่ากับข้อใดต่อไปนี้",
    r"<br>\(\frac{1}{1+2^{-\frac{1}{3}}+2^{\frac{1}{3}}}+\frac{1}{1+2^{-\frac{1}{3}}+2^{-\frac{2}{3}}}+\frac{1}{1+2^{\frac{1}{3}}+2^{\frac{2}{3}}}\) เท่ากับข้อใดต่อไปนี้",
    r"จากรูป พ.ท. ที่แรเงามีค่าเท่ากับกี่ตารางหน่วย",
    r"จากรูปมุม \(\mathrm{x}\) เท่ากับกี่องศา",
    r"กำหนดให้ \(3 \sin \mathrm{A}=4 \cos \mathrm{A}\) แล้ว \(\sin ^{2} \mathrm{~A}-\cos ^{2} \mathrm{~A}\) มีค่าเท่าใด",
    r"กล่องทึบแสงใบหนึ่งบรรจุลูกแก้วขนาดเดียวกันจำนวน \(15\) ลูก มีสีดำ \(3\) ลูก สีขาว \(5\) ลูก นอกนั้นเป็นสีแดง สุ่มหยิบลูกแก้วขึ้นมา \(2\)ลูก โดยหยิบทีละลูกแล้วไม่ใส่คืน ความน่าจะเป็นที่จะหยิบได้ลูกสีแดงทั้งสองลูกเป็นเท่าใด",
    r"กำหนดให้ \(4 \mathrm{x}^{2}-12 \mathrm{xy}+9 \mathrm{y}^{2}=0\) จงหาค่าของ \(\frac{2 \mathrm{x}}{\mathrm{y}}\)",
    r"ถ้า \(\mathrm{A}\) และ \(\mathrm{B}\) เป็นรากของสมการ \(\mathrm{2 x^{2}-6 x+4=0}\) แล้วค่าของ  \(\left(\mathrm{A}^{3}+\mathrm{B}^{3}\right)\left(\mathrm{A}^{2}+\mathrm{B}^{2}\right)\) มีค่าเท่าใด"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
          child: ListView.builder(
              itemCount: data.length,
              itemBuilder: ((context, index) {
                return CovertLatex(
                  laTeXCode: Text(data[index]
                      .replaceAll("\\(", "\$")
                      .replaceAll("\\)", "\$")
                      .replaceAll("<br>", "\n")),
                );
              })),
        ));
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
