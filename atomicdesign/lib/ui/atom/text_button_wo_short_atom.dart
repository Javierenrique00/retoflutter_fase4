import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:flutter/material.dart';



class TextButtonWoShortAtom extends StatelessWidget {
/// ## TextButtonWoShortAtom
///
/// Simple TextButtom without background but is short background for Categories
///
/// Require only a Text and function that is executed when button is pushed.
  const TextButtonWoShortAtom({required this.idButton,required this.textButton,required this.onClick,super.key});
  final String textButton;
  final int idButton;
  final Function (int idButton) onClick;

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(
      data: textButtonWithoutBackgroundShortTheme,
      child: TextButton(
        onPressed: ()=>onClick(idButton),
        child: Text(
          textButton,
        ),
      ),
    );
  }
}


