library flutter_latex;

export 'package:flutter_latex/src/widget/view_insets.dart';
export 'package:flutter_latex/src/widget/covert_latex.dart';



// class CustomKeyboard extends StatelessWidget {
//   const CustomKeyboard({
//     Key? key,
//     required this.onTextInput,
//     required this.onBackspace,
//   }) : super(key: key);

//   final ValueSetter<String> onTextInput;
//   final VoidCallback onBackspace;

//   void _textInputHandler(String text) => onTextInput.call(text);

//   void _backspaceHandler() => onBackspace.call();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 160,
//       color: Colors.blue,
//       child: Column(
//         children: [
//           buildRowOne(),
//           buildRowTwo(),
//           buildRowThree(),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowOne() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: 'start',
//             onTextInput: _textInputHandler,
//             inputValue: '\\(',
//           ),
//           TextKey(
//             text: 'end',
//             onTextInput: _textInputHandler,
//             inputValue: '\\)',
//           ),
//           TextKey(
//             text: '3',
//             onTextInput: _textInputHandler,
//             inputValue: '3',
//           ),
//           TextKey(
//             text: '4',
//             onTextInput: _textInputHandler,
//             inputValue: '4',
//           ),
//           TextKey(
//             text: '5',
//             onTextInput: _textInputHandler,
//             inputValue: '5',
//           ),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowTwo() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: '√',
//             onTextInput: _textInputHandler,
//             inputValue: '\\sqrt{}',
//           ),
//           TextKey(
//             text: '/',
//             onTextInput: _textInputHandler,
//             inputValue: '\\frac{}{}',
//           ),
//           TextKey(
//             text: 'c',
//             onTextInput: _textInputHandler,
//             inputValue: 'c',
//           ),
//           TextKey(
//             text: 'd',
//             onTextInput: _textInputHandler,
//             inputValue: 'd',
//           ),
//           TextKey(
//             text: 'e',
//             onTextInput: _textInputHandler,
//             inputValue: 'e',
//           ),
//         ],
//       ),
//     );
//   }

//   Expanded buildRowThree() {
//     return Expanded(
//       child: Row(
//         children: [
//           TextKey(
//             text: ' ',
//             flex: 4,
//             onTextInput: _textInputHandler,
//             inputValue: ' ',
//           ),
//           BackspaceKey(
//             onBackspace: _backspaceHandler,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TextKey extends StatelessWidget {
//   const TextKey({
//     Key? key,
//     required this.inputValue,
//     required this.text,
//     required this.onTextInput,
//     this.flex = 1,
//   }) : super(key: key);
//   final String inputValue;
//   final String text;
//   final ValueSetter<String> onTextInput;
//   final int flex;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: flex,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Material(
//           color: Colors.blue.shade300,
//           child: InkWell(
//             onTap: () {
//               onTextInput.call(inputValue);
//             },
//             child: Container(
//               child: Center(child: Text(text)),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class BackspaceKey extends StatelessWidget {
//   const BackspaceKey({
//     Key? key,
//     required this.onBackspace,
//     this.flex = 1,
//   }) : super(key: key);

//   final VoidCallback onBackspace;
//   final int flex;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: flex,
//       child: Padding(
//         padding: const EdgeInsets.all(1.0),
//         child: Material(
//           color: Colors.blue.shade300,
//           child: InkWell(
//             onTap: () {
//               onBackspace.call();
//             },
//             child: Container(
//               child: Center(
//                 child: Icon(Icons.backspace),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
