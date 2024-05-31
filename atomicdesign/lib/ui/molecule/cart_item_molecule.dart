import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/atom/qty_button_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CartItemMolecule extends StatelessWidget {
  const CartItemMolecule(
      {required this.product,
      required this.qty,
      required this.clickOnMinus,
      required this.clickOnPlus,
      super.key});
  final ProductUiModel product;
  final int qty;
  final Function() clickOnMinus;
  final Function() clickOnPlus;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(SizeFoundation.basicSpacer),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: SizeFoundation.cartItemMoleculeImageSize,
              height: SizeFoundation.cartItemMoleculeImageSize,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(product.urlImage),
              ),
            ),
          ),
          Expanded(
            child: Column(children: [
              Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text(product.price),
            QtyButtonAtom(
              qty: qty,
              clickOnMinus: () => clickOnMinus(),
              clickOnPlus: () => clickOnPlus(),
            )
            ],),
            ],)
          ),
        ],
      ),
    );
  }
}
