
import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/molecule/card_promotion_molecule.dart';
import 'package:atomicdesign/ui/molecule/card_svg_molecule.dart';
import 'package:atomicdesign/ui/molecule/card_tile_molecule.dart';
import 'package:atomicdesign/ui/molecule/discount_molecule.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class MoleculeScreen extends StatelessWidget {
  const MoleculeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShowcaseTemplate(
      widgetList: [
        {
          'CardTileMolecule': CardTileMolecule(title: 'Any title',icon: Icon(Icons.access_alarm),),
        },
        {
          'DiscountMolecule':DiscountMolecule(iconData: Icons.access_alarm,),
        },
        {
          'CardSvgMoleculeWithIcon':CardSvgMolecule(widget: Icon(Icons.accessibility_new_sharp),),
        },
        {
          'CardSvgMoleculeWithSvg':CardSvgMolecule(widget: ClothesSvgAtom(),),
        },
        {
          'CardPromotionMolecule':CardPromotionMolecule(),
        },
      ],
    );
  }
}
