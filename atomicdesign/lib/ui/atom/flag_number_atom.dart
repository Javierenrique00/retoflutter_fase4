import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class FlagNumberAtom extends StatelessWidget {
  const FlagNumberAtom({required this.discount, super.key});
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
              width: SizeFoundation.flagWidth,
              height: SizeFoundation.flagHeight,
              decoration: const BoxDecoration(
                color: ColorsFoundation.flagNumberBackground,
                borderRadius: BorderRadius.all(Radius.circular(SizeFoundation.flagBorder)),

              ),
              child: Center(
                child: Text(
                  discount,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: SizeFoundation.flagNumbertextFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            );
  }
}