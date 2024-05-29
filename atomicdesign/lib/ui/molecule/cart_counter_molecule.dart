import 'package:atomicdesign/ui/atom/circle_number_atom.dart';
import 'package:flutter/material.dart';

class CartCounterMolecule extends StatelessWidget {
  const CartCounterMolecule({required this.counter, required this.onClick, super.key});
  final String counter;
  final Function () onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        const Icon( size: 30, Icons.shopping_cart),
        if(counter.isNotEmpty) CircleNumberAtom(number: counter),
      ],),
    );
  }
}