import 'package:atomicdesign/ui/atom/circle_number_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CartCounterMolecule extends StatelessWidget {
  const CartCounterMolecule(
      {required this.counter, required this.onClick, super.key});
  final String counter;
  final Function () onClick;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed:() => onClick(), icon: const Icon(size: SizeFoundation.cartCounterMoleculeIconSize, Icons.shopping_cart)) ,
        if (counter.isNotEmpty) Positioned(top: 7,left: 10, child: CircleNumberAtom(number: counter),),
      ],
    );
  }
}
