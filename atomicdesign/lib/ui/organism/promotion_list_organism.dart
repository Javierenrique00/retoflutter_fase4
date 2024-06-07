import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/promotion_product_molecule.dart';
import 'package:flutter/material.dart';

class PromotionListOrganism extends StatelessWidget {
  const PromotionListOrganism({required this.promotionItems,required this.onClick, super.key});
  final List<PromotionUiModel> promotionItems;
  final Function (int index) onClick;

  @override
  Widget build(BuildContext context) {
    final listWidgets = promotionItems.asMap().map((key, value) => MapEntry(key, PromotionProductMolecule(imageWidget: value.imgWidget, discountStr: value.flagStr, onclick:() => onClick(key),) as Widget)).values.toList();
    return SizedBox(
      width: SizeFoundation.promotionListOrganismWidth,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listWidgets,),
    );
  }
}