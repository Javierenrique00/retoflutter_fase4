import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:flutter/material.dart';

class TextButtonWoBackgroundAtom extends StatelessWidget {
  final Function() onPressedButton;
  final String textButton;
  const TextButtonWoBackgroundAtom(
      {required this.textButton, required this.onPressedButton, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(data: textButtonWithoutBackgroundTheme, child: TextButton(
      onPressed: onPressedButton,
      child: Text(
        textButton,
      ),
    ), );
  }
}
