import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:flutter/material.dart';



class TextButtonWoShortImageAtom extends StatelessWidget {
/// ## TextButtonWoShortAtom
///
/// Simple TextButtom without background but is short background for Categories
///
/// Require only a Text and function that is executed when button is pushed.
  const TextButtonWoShortImageAtom({required this.idButton,required this.textButton,required this.imageWidget,required this.onClick,super.key});
  final String textButton;
  final int idButton;
  final Widget imageWidget;
  final Function (int idButton) onClick;

  @override
  Widget build(BuildContext context) {
    return TextButtonTheme(
      data: textButtonWithoutBackgroundShortTheme,
      child: TextButton(
        onPressed: ()=>onClick(idButton),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
          SizedBox(
            width: SizeFoundation.textButtonWoShortImageAtomImageSize,
            height: SizeFoundation.textButtonWoShortImageAtomImageSize,
            child: imageWidget,
          ),
          Text(
          textButton,
        ),
        ],),
      ),
    );
  }
}


