import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class QtyButtonAtom extends StatelessWidget {
  const QtyButtonAtom(
      {required this.qty,
      required this.clickOnMinus,
      required this.clickOnPlus,
      super.key});
  final int qty;
  final Function () clickOnMinus;
  final Function () clickOnPlus;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: SizeFoundation.qtyButtonAtomSpacerBorder,
        ),
        IconButton(
            onPressed: () => clickOnMinus(),
            icon: const Icon(Icons.do_disturb_on_outlined)),
        const SizedBox(
          width: SizeFoundation.qtyButtonAtomSpacerInside,
        ),
        Text(qty.toString()),
        const SizedBox(
          width: SizeFoundation.qtyButtonAtomSpacerInside,
        ),
        IconButton(
            onPressed: () => clickOnPlus(),
            icon: const Icon(Icons.add_circle_outline)),
        const SizedBox(
          width: SizeFoundation.qtyButtonAtomSpacerBorder,
        ),
      ],
    );
  }
}
