import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CardPromotionMolecule extends StatelessWidget {
  const CardPromotionMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.cardPromotionWidth,
      height: SizeFoundation.cardPromotionHeight,
      child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.all(Radius.elliptical(
              SizeFoundation.cardPromotionEllipticalRadious1,
              SizeFoundation.cardPromotionEllipticalRadious2)),
          child: Image.asset(
              'lib/assets/clothes_1.png',
              package: 'atomicdesign',
            ),
        ),
    );
  }
}
