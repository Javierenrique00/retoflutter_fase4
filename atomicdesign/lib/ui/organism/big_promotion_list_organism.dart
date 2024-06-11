import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/big_promotion_product_molecule.dart';
import 'package:flutter/material.dart';

class BigPromotionListOrganism extends StatelessWidget {
  const BigPromotionListOrganism({required this.promotionItems, required this.onClick, super.key});
  final List<PromotionUiModel> promotionItems;
  final Function (int index) onClick;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final listWidgets = promotionItems.asMap().map((key, value) => MapEntry(key, BigPromotionProductMolecule(imageWidget: value.imgWidget, bannerStr:  value.flagStr, onclick:() => onClick(key),) as Widget)).values.toList();
    return SizedBox(
      width: width,
      height: SizeFoundation.bigPromotionProductMoleculeSize,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listWidgets,),
    );
  }
}