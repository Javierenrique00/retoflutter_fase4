import 'package:atomicdesign/ui/atom/flag_big_promotion_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class BigPromotionProductMolecule extends StatelessWidget {
  const BigPromotionProductMolecule(
      {required this.imageWidget,
      required this.bannerStr,
      required this.onclick,
      super.key});

  final Function() onclick;
  final Widget imageWidget;
  final String bannerStr;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.bigPromotionProductMoleculeSize,
      height: SizeFoundation.bigPromotionProductMoleculeSize,
      child: Stack(
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: Card(
              child: InkWell(
                onTap: () => onclick(),
                child: imageWidget,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: FlagBigPromotionAtom(
              bannerStr: bannerStr,
            ),
          )
        ],
      ),
    );
  }
}

// Positioned(
//             bottom: 10,
//             left: 10,
//             child: FlagBigPromotionAtom(
//               bannerStr: bannerStr,
//             ))