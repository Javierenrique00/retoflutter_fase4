import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class ProductMolecule extends StatelessWidget {
  const ProductMolecule(
      {required this.product, required this.onclick, super.key});

  final Function(int id) onclick;
  final ProductUiModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onclick(product.id),
      child: SizedBox(
        width: SizeFoundation.productMoleculeWideSize,
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(SizeFoundation.productMoleculeInset),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: SizeFoundation.productMoleculeImageBoxWidth,
                  height: SizeFoundation.productMoleculeImageBoxheight,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: const BorderRadius.all(Radius.circular(
                          SizeFoundation.productMoleculeImageRadius)),
                      child: Image.network(product.urlImage),
                    ),
                  ),
                ),
                Text(overflow: TextOverflow.ellipsis, maxLines: SizeFoundation.productMoleculeDescriptionMaxLines, product.name),
                Text(maxLines:  SizeFoundation.productMoleculePriceMaxLines,product.price, style: const TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
