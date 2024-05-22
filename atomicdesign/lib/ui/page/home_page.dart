import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/card_promotion_molecule.dart';
import 'package:atomicdesign/ui/organism/scroll_view_organism.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: SizeFoundation.homePageWidth,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: ScrollViewOrganism(),
          ),
        ),
        const SizedBox(
          width: SizeFoundation.homePageWidth,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: CardPromotionMolecule(),
          ),
        )
      ],
    );
  }
} //