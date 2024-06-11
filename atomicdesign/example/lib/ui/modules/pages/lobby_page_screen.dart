import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/page/lobby_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class LobbyPageScreen extends StatelessWidget {
  const LobbyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final promotions = [
      PromotionUiModel(
          flagStr: '10%',
          imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(
          flagStr: '15%',
          imgWidget: Image.network('https://picsum.photos/id/293/300/300')),
      PromotionUiModel(
          flagStr: '20%',
          imgWidget: Image.network('https://picsum.photos/id/294/300/300')),
      PromotionUiModel(
          flagStr: '30%',
          imgWidget: Image.network('https://picsum.photos/id/295/300/300')),
      PromotionUiModel(
          flagStr: '40%',
          imgWidget: Image.network('https://picsum.photos/id/296/300/300')),
      PromotionUiModel(
          flagStr: '50%',
          imgWidget: Image.network('https://picsum.photos/id/297/300/300')),
    ];

    final bigPromotions = [
      PromotionUiModel(
          flagStr: 'XXX',
          imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(
          flagStr: 'YYYYYY',
          imgWidget: Image.network('https://picsum.photos/id/299/300/300')),
      PromotionUiModel(
          flagStr: 'Product 1',
          imgWidget: Image.network('https://picsum.photos/id/300/300/300')),
      PromotionUiModel(
          flagStr: 'Product 2',
          imgWidget: Image.network('https://picsum.photos/id/301/300/300')),
      PromotionUiModel(
          flagStr: 'Product 3',
          imgWidget: Image.network('https://picsum.photos/id/302/300/300')),
      PromotionUiModel(
          flagStr: 'Product 4',
          imgWidget: Image.network('https://picsum.photos/id/297/300/300')),
    ];

    return PageTemplate(
      title: 'LobbyPage',
      widget: LobbyPage(
        categoriesNames: const ['Categories', 'Search'],
        categoriesWidgets: const [ClothesSvgAtom(), Icon(Icons.search)],
        onClickCategories: (id) {},
        promotionItems: promotions,
        onClickPromotion: (int index) {},
        bigPromotionItems: bigPromotions,
        onClickBigPromotion: (int index) {},
      ),
    );
  }
}
