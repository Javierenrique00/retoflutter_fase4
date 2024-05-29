import 'package:atomicdesign/ui/molecule/cart_counter_molecule.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'CartCounterMolecule',
      widget: Container(
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            CartCounterMolecule(counter: '', onClick: () {}),
            CartCounterMolecule(counter: '8', onClick: () {}),
            CartCounterMolecule(counter: '99', onClick: () {}),
            CartCounterMolecule(counter: '998', onClick: () {})
          ],
        ),
      ),
    );
  }
}
