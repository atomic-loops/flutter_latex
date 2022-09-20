import 'package:flutter/material.dart';
import 'package:flutter_latex/src/widget/view_insets.dart';

class LatexKeyboard extends StatelessWidget {
  const LatexKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
// enum MathKeyboardType {
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
