
import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/molecule/card_promotion_molecule.dart';
import 'package:atomicdesign/ui/molecule/card_svg_molecule.dart';
import 'package:atomicdesign/ui/molecule/card_tile_molecule.dart';
import 'package:atomicdesign/ui/molecule/discount_molecule.dart';
import 'package:atomicdesign/ui/molecule/product_molecule.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class MoleculeScreen extends StatelessWidget {
  const MoleculeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcaseTemplate(
      widgetList: [
        const {
          'CardTileMolecule': CardTileMolecule(title: 'Any title',icon: Icon(Icons.access_alarm),),
        },
        const {
          'DiscountMolecule':DiscountMolecule(iconData: Icons.access_alarm,),
        },
        const {
          'CardSvgMoleculeWithIcon':CardSvgMolecule(widget: Icon(Icons.accessibility_new_sharp),),
        },
        const {
          'CardSvgMoleculeWithSvg':CardSvgMolecule(widget: ClothesSvgAtom(),),
        },
        const {
          'CardPromotionMolecule':CardPromotionMolecule(),
        },
        {
          'ProductMolecule':ProductMolecule(product: ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/292/200/200', name: 'Cebolla roja', price: '2.850'), onclick: (id) {  },),
        },
      ],
    );
  }
}