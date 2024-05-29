import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/cart_item_molecule.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class OtherMoleculesScreen extends StatelessWidget {
  const OtherMoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product1 = ProductUiModel(id: 1, urlImage: 'https://picsum.photos/id/292/400/400' , name: 'Product name', price: '1.850');
    return PageTemplate(title: 'Other Molecules', widget: ListView(children: [
      const Text('CartItemMolecule'),
      const SizedBox(height: SizeFoundation.basicSpacer,),
      CartItemMolecule(product: product1, qty: 5, clickOnMinus: (){}, clickOnPlus: (){},),
      const VerticalDivWidget(),
    ],));
  }
}