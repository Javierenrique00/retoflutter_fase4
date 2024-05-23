import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:flutter/material.dart';

class TextButtonWoBackgroundAtom extends StatelessWidget {
  /// ## TextButtonWoBackgroundAtom
  ///
  /// Simple TextButtom without background.
  ///
  /// Require only a Text and function that is executed when button is pushed.
  const TextButtonWoBackgroundAtom(
      {required this.textButton, required this.onPressedButton, super.key});

  final Function() onPressedButton;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(
      data: textButtonWithoutBackgroundTheme,
      child: TextButton(
        onPressed: onPressedButton,
        child: Text(
          textButton,
        ),
      ),
    );
  }
}
