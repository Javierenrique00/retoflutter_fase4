import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/molecule/card_svg_molecule.dart';
import 'package:atomicdesign/ui/molecule/discount_molecule.dart';
import 'package:flutter/material.dart';

class ScrollViewOrganism extends StatelessWidget {
  final dataKey = GlobalKey();

  ScrollViewOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Row(
          children: <Widget>[
            CardSvgMolecule(widget: ClothesSvgAtom()),
            CardSvgMolecule(widget: Icon(Icons.airplanemode_active)),
            DiscountMolecule(iconData: Icons.add_shopping_cart),
          ],
        ),
      );
  }
}