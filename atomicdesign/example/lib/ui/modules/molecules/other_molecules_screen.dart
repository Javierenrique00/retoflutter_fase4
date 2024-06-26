import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/big_promotion_product_molecule.dart';
import 'package:atomicdesign/ui/molecule/cart_item_molecule.dart';
import 'package:atomicdesign/ui/molecule/promotion_product_molecule.dart';
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

      const Text('PromotionProductMolecule'),
      const SizedBox(height: SizeFoundation.basicSpacer,),
      PromotionProductMolecule(imageWidget: const Icon(Icons.ac_unit_rounded), discountStr: '99.99%', onclick:(){},),
      const VerticalDivWidget(),

      const Text('BigPromotionProductMolecule'),
      const SizedBox(height: SizeFoundation.basicSpacer,),
      BigPromotionProductMolecule(imageWidget: Image.network('https://picsum.photos/id/292/300/300'), bannerStr: 'Banner !!', onclick:() {},),
      const VerticalDivWidget(),
    ],));
  }
}