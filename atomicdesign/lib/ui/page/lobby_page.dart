import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/organism/big_promotion_list_organism.dart';
import 'package:atomicdesign/ui/organism/list_categories_image_organism.dart';
import 'package:atomicdesign/ui/organism/promotion_list_organism.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage(
      {required this.categoriesNames,
      required this.categoriesWidgets,
      required this.onClickCategories,
      required this.promotionItems,
      required this.onClickPromotion,
      required this.bigPromotionItems,
      required this.onClickBigPromotion,
      super.key});
  final List<String> categoriesNames;
  final List<Widget> categoriesWidgets;
  final Function(int id) onClickCategories;
  final List<PromotionUiModel> promotionItems;
  final Function(int index) onClickPromotion;
  final List<PromotionUiModel> bigPromotionItems;
  final Function(int index) onClickBigPromotion;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      child: ListView(
        children: [
          ListCategoriesImageOrganism(
              items: categoriesNames,
              widgets: categoriesWidgets,
              onCLick: (id) => onClickCategories(id)),
          PromotionListOrganism(
              promotionItems: promotionItems,
              onClick: (index) => onClickPromotion(index),
            ),
          BigPromotionListOrganism(
              promotionItems: bigPromotionItems,
              onClick: (index) => onClickBigPromotion(index),
            ),
        ],
      ),
    );
  }
}
