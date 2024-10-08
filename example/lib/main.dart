import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_latex/flutter_latex.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

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
          SizedBox(
            height: 20,
          ),
          CovertLatex(
              textStyle: TextStyle(fontSize: 25),
              laTeXCode: Text(
                changeValue.controller.text,
                style: TextStyle(fontSize: 25),
              ))
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
    r"แม่ค้าขายผลไม้อยู่ \(3\) ชนิด ได้แก่ แตงโม, ขนุน และสาลี่ โดยแตงโมลูกละ \(23\) บาท ขนุนลูกละ \(30\) บาท ส่วนสาลี่ลูกละ \(12\) บาท ถ้าเมธาจะต้องซื้อผลไม้โดยใช้เงินอย่างน้อย  \(104\) บาท แต่ไม่เกิน \(115\) บาท เขาจะซื้อผลไม้ได้กี่วิธี",
    r"ถ้านักเรียน \(4\) คน ได้รับแจกถุงใส่หลอดกาแฟยาว \(1\) นิ้ว \(2\) หลอด และยาว \(2\) นิ้ว  \(2\) หลอด คนละ \(1\) ถุง ให้แต่ละคนสุ่มหยิบหลอดกาแฟในถุงตัวเองคนละหนึ่งหลอด ความน่าจะเป็นที่เมื่อนำหลอดกาแฟที่หยิบได้ทั้ง \(4\) หลอดมาประกอบกันแล้วเป็นรูปสี่เหลี่ยมผืนผ้า ตรงกับข้อใดต่อไปนี้",
    r"กำหนดให้ สำหรับจำนวนเต็มบวก \(\mathrm{a}\) และ \(\mathrm{b}\) ใด ๆ<br>\( \mathrm{a \otimes b = a(a+b)} \)<br>ถ้า \(\mathrm{a \otimes b=55}\) แล้ว ค่ามากที่สุดของ \(\mathrm{b \otimes a}\) เท่ากับข้อใด",
    r"รูปสามเหลี่ยมหน้าจั่ว \(\mathrm{ABC}\) มีด้าน \(\mathrm{AB}\) เท่ากับด้าน \(\mathrm{AC}\) ถ้า \(\mathrm{P}\) เป็นจุดจุดหนึ่ง บนด้าน \(\mathrm{AB}\) ที่ทำให้ \(\mathrm{AP}=\mathrm{PC}=\mathrm{CB}\) แล้ว \(\hat{\mathrm{BAC}}\) มีขนาดเท่าใด",
    r"รูปสี่เหลี่ยมผืนผ้ามีด้านหนึ่งยาวเป็น \(2\) เท่าของอีกด้านหนึ่ง ถ้าด้านกว้างลดลง \(8 \%\) และด้านยาวเพิ่มขึ้น \(5 \%\) ข้อใดต่อไปนี้ถูกต้อง",
    r"ค่าของ \(\frac{x^{3}+2 x^{2}+2 x+1}{x^{3}-1}\) เมื่อ \(x \neq 1\) มีค่าตรงกับข้อใดต่อไปนี้",
    r"กำหนดให้ \(\mathrm{y=c-2 x-x^{2}}\) มีค่าสูงสุดเท่ากับ \(-2\) ข้อใดต่อไปนี้ถูกต้อง",
    r"แผ่นโลหะรูปสี่เหลี่ยมมุมฉากดังรูป มีพื้นที่ \(1,200\) ตารางเซนติเมตร นำมาดัดให้เป็นรูปกระบอกกลมมีปริมาตร \(600\) ลูกบาศก์เซนติเมตร จงหาว่า \(\frac{y}{x}\) มีค่าตรงกับ ข้อใด",
    r"กำหนดให้สามเหลี่ยม \(\mathrm{ABC}\) บรรจุอยู่ในวงกลม ดังรูป ด้าน \(\mathrm{AB}\) ยาว \(8\) หน่วย ด้าน \(\mathrm{BC}\) ยาว \(7\)หน่วย ลากเส้นตรงต่อจาก \(\mathrm{BC}\) ไปทาง \(\mathrm{C}\) ถึงจุด \(\mathrm{P}\) ยาว \(9\) หน่วย ถ้าลากเส้นจาก \(\mathrm{P}\) ไป \(\mathrm{A}\) เส้น \(\mathrm{PA}\) จะสัมผัสวงกลมที่จุด \(\mathrm{A}\) ความยาวของด้าน \(\mathrm{AP}\) ตรงกับข้อใด",
    r"ให้ \(\mathrm{x}, \mathrm{y}, \mathrm{z}\) เป็นคำตอบของระบบสมการ <br>$\begin{array}{l}(\mathrm{x}+\mathrm{y})(\mathrm{x}+\mathrm{y}+\mathrm{z})=18\\  (\mathrm{y}+\mathrm{z})(\mathrm{x}+\mathrm{y}+\mathrm{z})=30\\ (\mathrm{z}+\mathrm{x})(\mathrm{x}+\mathrm{y}+\mathrm{z})=2\end{array} $<br>\(\mathrm{x}+\mathrm{y}+\mathrm{z}\) มีค่าเท่ากับข้อใด",
  ];
  List solution = [
    r"เนื่องจากผลไม้ที่ถูกที่สุดราคา \(12\) บาท ฉะนั้นเขาจะต้องเหลือเงินจากการซื้อผลไม้ได้สูงสุด \(11\) บาท <br>ดังนั้น เราจึงแยกคิดเป็น \(6\) กรณี ดังนี้<br>\( \small \begin{array}{rcl} &กรณีที่1&ซื้อแตงโม5ลูก เป็นเงิน 115 บาท พอดี \\&กรณีที่2& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{0 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{9 ลูก} &\longrightarrow& \text{7 บาท} \\\text{1 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{1 บาท} \\\text{2 ลูก} &\longrightarrow& \text{4 ลูก} &\longrightarrow& \text{7 บาท} \\\text{3 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{1 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 3}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{1 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{7 ลูก} &\longrightarrow& \text{8 บาท} \\\text{1 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{2 บาท} \\\text{2 ลูก} &\longrightarrow& \text{2 ลูก} &\longrightarrow& \text{8 บาท} \\\text{3 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{2 บาท}\end{cases} \end{rcases} \text{4 วิธี} \\&\text{กรณีที่ 4}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{2 ลูก} = \begin{rcases} \begin{cases}\text{0 ลูก} &\longrightarrow& \text{5 ลูก} &\longrightarrow& \text{9 บาท} \\\text{1 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{3 บาท} \\\text{2 ลูก} &\longrightarrow& \text{0 ลูก} &\longrightarrow& \text{9 บาท} \end{cases} \end{rcases} \text{3 วิธี} \\&\text{กรณีที่ 5}& แตงโม ~~\quad ขนุน \hphantom{\longrightarrow} \hphantom{\longrightarrow}สาลี่ \hphantom{\longrightarrow} \hphantom{\longrightarrow} ~~เหลือเงิน \\&& \text{3 ลูก} = \begin{rcases} \begin{cases}\text{1 ลูก} &\longrightarrow& \text{1 ลูก} &\longrightarrow& \text{4 บาท} \\\text{0 ลูก} &\longrightarrow& \text{3 ลูก} &\longrightarrow& \text{10 บาท} \end{cases} \end{rcases} \text{2 วิธี} \\&\text{กรณีที่ 6}& \text{ซื้อแตงโม 4 ลูก ขนุน 0 ลูก สาลี่ 1 ลูก เหลือเงิน 11 บาท} \\&& \text{รวม = 1+4+4+3+2+1 = 15 วิธี} \end{array} \)<br>(ตอบ \(15\))",
    r"วิธีคิด <br>\( \begin{array}{cccc} \text{คนที่ 1} & \text{คนที่ 2} & \text{คนที่ 3} & \text{คนที่ 4} \end{array} \)<br>\( \qquad 1 ~~~~\qquad 1 ~~~~\qquad 1 ~~~~\qquad 1 \)<br>\( \qquad 1 ~~~~\qquad 1 ~~~~\qquad 1 ~~~~\qquad 2 \)<br>\( \qquad 1 ~~~~\qquad 1 ~~~~\qquad 2 ~~~~\qquad 1 \)<br>\( \begin{rcases} ~~~\quad \boxed{1 ~~~~\qquad 1 ~~~~\qquad 2 ~~~~\qquad 2 } \leftarrow \\\qquad 1 ~~~~\qquad 2 ~~~~\qquad 1 ~~~~\qquad 1 \\~~~\quad \boxed{1 ~~~~\qquad 2 ~~~~\qquad 1 ~~~~\qquad 2 } \leftarrow \\~~~\quad \boxed{1 ~~~~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 1 } \leftarrow \\\qquad 1 ~~~~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 2 \\\qquad 2 ~~~~\qquad 1 ~~~~\qquad 1 ~~~~\qquad 1 \\~~~\quad \boxed{2 ~~~~\qquad 1 ~~~~\qquad 1 ~~~~\qquad 2 } \leftarrow \\~~~\quad \boxed{2 ~~~~\qquad 1 ~~~~\qquad 2 ~~~~\qquad 1 } \leftarrow \\\qquad 2 ~~~~\qquad 1 ~~~~\qquad 2 ~~~~\qquad 2 \\~~~\quad \boxed{2 ~~~~\qquad 2 ~~~~\qquad 1 ~~~~\qquad 1 } \leftarrow \end{rcases} \boxed{\text{สี่เหลี่ยมผืนผ้ามีด้านยาวเท่ากันอยู่ 2 คู่}} \)<br>\( ~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 1 ~~~~\qquad 2 \)<br>\( ~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 1 \)<br>\( ~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 2 ~~~~\qquad 2 \)br>\(\therefore\) ความน่าจะเป็นของเหตุการณ์ \(=\frac{6}{16}=\frac{3}{8}\)<br>(ตอบ \(\frac{3}{8}\))",
    r"วิธีคิด จาก \(\mathrm{a} \otimes \mathrm{b}=\mathrm{a}(\mathrm{a}+\mathrm{b})\)<br>\(\hphantom{วิธีคิ}\small \begin{array}{rcl} กรณี~\mathrm{a}=1, \mathrm{~b}=54~จะได้~\mathrm{a} \otimes \mathrm{b}&=&1(1+54)=55 \\\mathrm{b} \otimes \mathrm{a}&=&54(54+1)=2,970 \\กรณี~\mathrm{a}=5, \mathrm{~b}=6~จะได้~~~\mathrm{a} \otimes \mathrm{b}&=&5(5+6)=55 \\\mathrm{b} \otimes \mathrm{a}&=&6(6+5)=66 \end{array} \)<br>ดังนั้น ค่ามากที่สุดของ \(\mathrm{b} \otimes \mathrm{a}\) คือ \(2,970\)<br>(ตอบ \(2,970\))",
    r"กำหนดให้ \(\mathrm{\hat{BAC}=a}\)<br>\(\small \begin{array}{rcl} จากรูป~ \triangle \mathrm{ABC}~จะได้~\mathrm{2a+a+a+a} &=&180 \\\mathrm{5a} &=& 180 \\\mathrm{a} &=& 36^{\circ} \\\therefore \mathrm{\hat{BAC}}&=&36^{\circ} \end{array} \)<br>(ตอบ \(36^{\circ}\))",
    r"\(\small \left.\begin{array}{rcl}\text {วิธีคิด กำหนดให้ ด้านกว้างยาว }&=&100 \text { หน่วย } \\ \text { ด้านยาวยาว }&=&200 \text { หน่วย }\end{array}\right\}\) พ.ท. \(=100 \times 200=20,000\) ตร.น. <br>\(\small\left.\begin{array}{l}\text { ด้านกว้างลด } 8 \% \rightarrow \frac{92}{100} \times 100=92 \text { หน่วย } \\ \text { ด้านยาวเพิ่ม } 5 \% \rightarrow \frac{105}{100} \times 200=210 \text { หน่วย }\end{array}\right\}\) พ.ท. \(=92 \times 210=19,320\) ตร.น. <br>\(\small \therefore \text { พ.ท.ลดลง }=20,000-19,320=680 \text { ตร.น. }=\frac{680}{20,000} \times 100=3.4 \%\)<br>(ตอบ พื้นที่ลดลง \(3.4 \%\))",
    r"\(  \begin{array}{rcl} \smallวิธีคิด \quad \large\frac{x^{3}+2 x^{2}+2 x+1}{x^{3}-1}&=&\large\frac{\left(x^{3}+1\right)+\left(2 x^{2}+2 x\right)}{(x-1)\left(x^{2}+x+1\right)} \\&=&\large\frac{(x+1)\left(x^{2}-x+1\right)+2 x(x+1)}{(x-1)\left(x^{2}+x+1\right)} \\&=&\large\frac{(x+1)\left(x^{2}-x+1+2 x\right)}{(x-1)\left(x^{2}+x+1\right)} \\&=&\large\frac{(x+1)\left(x^{2}+x+1\right)}{(x-1)\left(x^{2}+x+1\right)} \\&=&\large\frac{x+1}{x-1} \end{array} \)<br>(ตอบ \(\frac{x+1}{x-1}\))<br>วิธีคิดเร็ว <br>\( \boxed{ \begin{array}{l} \small แทน~ x= 2 ~ในโจทย์~จะได้ = \frac{2^3+2(2^{2})+2(2)+1}{2^3-1} = 3 \\\small จาก~\frac{x+1}{x-1}~เมื่อแทน~x = 2~จะได้ = \frac{2+1}{2-1}=3 \end{array}} \)",
    r"\( \begin{array}{lccl} \small จากสมการ &\mathrm{y}&=& \mathrm{-x^2-2x+c} \\\small จากสมการพาราโบลา &\mathrm{y}&=& \mathrm{ax^2+bx+c} \end{array} \)<br>จะได้ \( \mathrm{a=-1, b=-2} \) และ \( \mathrm{c=c} \)<br>\( \begin{array}{lrcl} \small ค่าสูงสุดหาจาก &\mathrm{k=\frac{4ac-b^2}{4a}} &=& -2 \\&\mathrm{\frac{4(-1)(c)-(-2)^2}{4(-1)}} &=& -2 \\&\mathrm{-4c-4} &=& 8 \\&\mathrm{-4c} &=& 12 \\&\mathrm{c} &=& -3 \\\small \mathrm{\text{ค่าของ h หาจาก }} &\mathrm{h = \frac{-b}{2a} = \frac{-(-2)}{2(-1)}} &=& -1 \\\small \therefore กราฟพาราโบลามีจุดยอดอยู่ที่~&\mathrm{(h, k)} &=& (-1,~-2) \end{array} \)<br>(คำตอบ กราฟเป็นพาราโบลามีจุดยอด \( (-1,-2) )\)",
    r"<br>\(\small\begin{array}{rcl} \text{จากรูป พ.ท. } \square \text{ผืนผ้า คือ }xy &=& 1,200 ~\mathrm{cm^2} \\เส้นรอบรูปของทรงกระบอก \quad &=& x \\2 \pi r &=& x \\r &=& \frac{x}{2\pi} ~\mathrm{cm} \end{array} \)<br>\(\small\def\arraystretch{1.5}\begin{array}{rcl} \text{จากโจทย์ ปริมาตรของทรงกระบอกกลม} &=& 600 ~\mathrm{cm^3} \\จะได้ \hphantom{ปริมาตรของทรงกระบอกกลม} \pi r^2 h &=& 600 \\\pi \left(\frac{x}{2\pi}\right)^{2} (y) &=& 600 \\\frac{x^2y}{4\pi} &=& 600 \\x^{2} y &=&2,400 \pi \\x(x y) &=&2,400 \pi \\x(1,200) &=&2,400 \pi \\x &=&2 \pi~\mathrm{cm} \\\text { แทน } x=2 \pi \text { ใน } x y=1,200 \text { จะได้ } y&=&\frac{600}{\pi} ~\mathrm{cm} \end{array} \) <br>\( \therefore \quad \large\frac{y}{x}=\frac{\frac{600}{\pi}}{2 \pi}=\frac{600}{\pi} \times \frac{1}{2 \pi}=\frac{300}{\pi^{2}} \)<br>(ตอบ \(\frac{300}{\pi^{2}}\))",
    r"จากรูปกำหนดให้ \(\mathrm{\hat{A B C}=x}\) และ \(\mathrm{\hat{B A C}=y}\)<br>\(\small \begin{array}{ll} จากทฤษฎีบท ; & มุมระหว่างเส้นสัมผัสของวงกลมกับคอร์ดจะเท่ากับมุมภายในวงกลม \\& ที่อยู่ตรงข้าม~จะได้~\hat{\mathrm{CAP}}=\hat{\mathrm{ABC}}=\mathrm{x} \end{array} \)<br>\(\small \begin{array}{ll} จากทฤษฎีบท ; & เมื่อต่อด้านหนึ่งด้านใดของรูปสามเหลี่ยมออกไปมุมภายนอกที่เกิดขึ้น \\& จะเท่ากับผลบวกของมุมภายในอยู่ด้านตรงข้าม \end{array} \) <br>\( \small \def\arraystretch{1.5}\begin{array}{ll} จะได้~&\hat{\mathrm{ACP}}=\mathrm{x}+\mathrm{y}=\hat{\mathrm{BAP}} \\เนื่องจาก &\hat{\mathrm{CAP}}=\hat{\mathrm{ABC}}, \hat{\mathrm{ACP}}=\hat{\mathrm{BAP}}~และ~\hat{\mathrm{APC}}=\hat{\mathrm{APB}} \\แสดงว่า &\triangle \mathrm{ACP} \sim \triangle \mathrm{ABP} \end{array} \) <br>\(\small \def\arraystretch{1.5} \begin{array}{rcl} ดังนั้น \qquad \large\frac{\overline{\mathrm{AP}}}{\overline{\mathrm{BP}}} &=&\large\frac{\overline{\mathrm{CP}}}{\overline{\mathrm{AP}}} \\\overline{\mathrm{AP}}^{2} &=&\overline{\mathrm{CP}} \times \overline{\mathrm{BP}} \\\overline{\mathrm{AP}}^{2} &=&9 \times 16 \\\overline{\mathrm{AP}}^{2} &=&144 \\\therefore \overline{\mathrm{AP}} &=&12 \text { หน่วย } \end{array}\)<br>(ตอบ \(12\) หน่วย)",
    r"\(\text{วิธีคิด จากระบบสมการ }\)<br>\((\mathrm{x}+\mathrm{y})(\mathrm{x}+\mathrm{y}+\mathrm{z})=18\quad \text{---(1)}\)<br>\((\mathrm{y}+\mathrm{z})(\mathrm{x}+\mathrm{y}+\mathrm{z})=30\hspace{11pt}\text{---(2)}\)<br>\((\mathrm{z}+\mathrm{x})(\mathrm{x}+\mathrm{y}+\mathrm{z})=2\hspace{16.5pt} \text{---(3)}\)<br>\(\text{นำ (1)+(2)+(3) ;}\)<br> \( \begin{array}{rcl} (\mathrm{x}+\mathrm{y})(\mathrm{x}+\mathrm{y}+\mathrm{z})+(\mathrm{y}+\mathrm{z})(\mathrm{x}+\mathrm{y}+\mathrm{z})+(\mathrm{z}+\mathrm{x})(\mathrm{x}+\mathrm{y}+\mathrm{z}) & = & 50 \\ (\mathrm{x}+\mathrm{y}+\mathrm{z})(\mathrm{x}+\mathrm{y}+\mathrm{y}+\mathrm{z}+\mathrm{z}+\mathrm{x}) & = & 50 \\ (\mathrm{x}+\mathrm{y}+\mathrm{z})(2\mathrm{x}+2\mathrm{y}+2\mathrm{z}) & = & 50 \\ (\mathrm{x}+\mathrm{y}+\mathrm{z})(2)(\mathrm{x}+\mathrm{y}+\mathrm{z}) & = & 50 \\ (\mathrm{x}+\mathrm{y}+\mathrm{z})^{2} & = & 25 \\ \therefore \mathrm{x}+\mathrm{y}+\mathrm{z} & = & \pm 5 \end{array} \)<br>(ตอบ $\pm 5$)"
  ];

  int index1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Question ${index1 + 1}"),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: AutoRander(
                  latex: data[index1],
                )),
            Text("Solution ${index1 + 1}"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: AutoRander(
                    latex: solution[index1],
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index1 <= data.length - 1) {
            setState(() {
              index1++;
            });
          }
        },
        child: Icon(Icons.skip_next),
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
