import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CardSvgMolecule extends StatelessWidget {
  const CardSvgMolecule({required this.widget, super.key});
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: SizeFoundation.discountMoleculeSize,
        height: SizeFoundation.discountMoleculeSize,
        child: widget,
      ),
    );
  }
}
