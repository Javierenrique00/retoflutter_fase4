import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class TryAgainPage extends StatelessWidget {
  const TryAgainPage({required this.onPressed, super.key});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeFoundation.tryAgainPageWidth,
        child: TextButtonAtom(textButton: 'Try Again', onPressedButton: ()=> onPressed(),),
      ),
    );
  }
}