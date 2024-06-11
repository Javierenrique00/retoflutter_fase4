import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class FlagBigPromotionAtom extends StatelessWidget {
  const FlagBigPromotionAtom({required this.bannerStr, super.key});
  final String bannerStr;

  @override
  Widget build(BuildContext context) {
    return Container(
              constraints: const BoxConstraints(maxWidth: SizeFoundation.bigFlagWidth,maxHeight: SizeFoundation.bigFlagHeight),
              padding: const EdgeInsets.symmetric(horizontal: SizeFoundation.bigFlagHorizInset,vertical: SizeFoundation.bigFlagVertInset),
              decoration: const BoxDecoration(
                color: ColorsFoundation.bigFlagNumberBackground,
                borderRadius: BorderRadius.all(Radius.circular(SizeFoundation.bigFlagBorder)),
              ),
              child: Text(
                  bannerStr,
                  softWrap: true,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: SizeFoundation.bigFlagNumbertextFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
            );
  }
}