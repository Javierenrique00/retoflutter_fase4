import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/organism/list_categories_image_organism.dart';
import 'package:atomicdesign/ui/organism/promotion_list_organism.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({
    required this.categoriesNames,
    required this.categoriesWidgets,
    required this.onClickCategories,
    required this.promotionItems,
    required this.onClickPromotion,
    super.key});
  final List<String> categoriesNames;
  final List<Widget> categoriesWidgets;
  final Function(int id) onClickCategories;
  final List<PromotionUiModel> promotionItems;
  final Function (int index) onClickPromotion;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width,
        child: Column(
          children: [
            ListCategoriesImageOrganism(
                items: categoriesNames, widgets: categoriesWidgets,onCLick: (id) => onClickCategories(id)),
            Expanded(
              child: PromotionListOrganism(promotionItems: promotionItems, onClick:(index) => onClickPromotion(index),),
            ),
          ],
        ),
      );
  }
}