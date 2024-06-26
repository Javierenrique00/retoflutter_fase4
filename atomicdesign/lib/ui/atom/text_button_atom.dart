import 'package:flutter/material.dart';

class TextButtonAtom extends StatelessWidget {

  /// ## TextButtonAtom
  /// 
  /// Simple TextButtom with background.
  /// 
  /// Require only a Text and function that is executed when button is pushed.
  const TextButtonAtom(
      {required this.textButton, required this.onPressedButton, super.key});

  final Function() onPressedButton;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressedButton,
        child: Text(
          textButton,
        ));
  }
}
