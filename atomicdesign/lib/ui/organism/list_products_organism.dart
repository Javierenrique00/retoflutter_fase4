import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/product_molecule.dart';
import 'package:flutter/material.dart';

class ListProductsOrganism extends StatelessWidget {
  const ListProductsOrganism({required this.products,required this.shrinkWrap,required this.onClick , super.key});
  final List<ProductUiModel> products;
  final bool shrinkWrap;
  final Function (int id) onClick;

  @override
  Widget build(BuildContext context) {
    final widgetList = products
        .map((e) => ProductMolecule(product: e, onclick: (id)=>onClick(id)) as Widget)
        .toList();
    return SizedBox(
      width: SizeFoundation.listProductOrganismWidth,
      child: GridView.count(
        shrinkWrap: shrinkWrap,
        primary: false,
        crossAxisSpacing: SizeFoundation.listProductOrganismSpacer,
        mainAxisSpacing: SizeFoundation.listProductOrganismSpacer,
        padding: const EdgeInsets.all(SizeFoundation.listProductOrganismEdgeInset),
        crossAxisCount: SizeFoundation.listProductOrganismCrossAxis,
        childAspectRatio: SizeFoundation.listProductOrganismChilsAspectRatio,
        children: widgetList,
      ),
    );
  }
}
