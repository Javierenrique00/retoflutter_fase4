import 'package:atomicdesign/ui/atom/flag_number_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class PromotionProductMolecule extends StatelessWidget {
  const PromotionProductMolecule(
      {required this.imageWidget,
      required this.discountStr,
      required this.onclick,
      super.key});

  final Function() onclick;
  final Widget imageWidget;
  final String discountStr;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: SizeFoundation.promotionProductMoleculeSize,
          height: SizeFoundation.promotionProductMoleculeSize,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Card(
              child: InkWell(
                onTap: () => onclick(),
                child: imageWidget,
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: FlagNumberAtom(
            discount: discountStr,
          ),
        )
      ],
    );
  }
}
