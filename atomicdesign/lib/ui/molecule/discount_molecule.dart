import 'package:atomicdesign/ui/atom/discount_svg_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class DiscountMolecule extends StatelessWidget {
  const DiscountMolecule({required this.iconData, super.key});
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: SizeFoundation.discountMoleculeSize,
        height: SizeFoundation.discountMoleculeSize,
        child: Stack(
          alignment: Alignment.topCenter,
          fit: StackFit.loose,
          clipBehavior: Clip.hardEdge,
          children: [
            Icon(
              iconData,
              size: SizeFoundation.discountMoleculeSize,
            ),
            Container(
              alignment: Alignment.topCenter,
              width: SizeFoundation.discountMoleculeSizehalf,
              height: SizeFoundation.discountMoleculeSizehalf,
              child: const DiscountSvgAtom(),
            ),
          ],
        ),
      ),
    );
  }
}
