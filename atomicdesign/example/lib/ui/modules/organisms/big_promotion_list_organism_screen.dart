import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/organism/big_promotion_list_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class BigPromotionListOrganismScreen extends StatelessWidget {
  const BigPromotionListOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final promotions = [
      PromotionUiModel(flagStr: 'XXX', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(flagStr: 'YYYYYYY', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(flagStr: 'ZZZZZZZZZZ', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(flagStr: 'Product 4', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(flagStr: 'Product 5', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
      PromotionUiModel(flagStr: 'Product 6', imgWidget: Image.network('https://picsum.photos/id/292/300/300')),
    ];

    return PageTemplate(
        title: 'BigPromotionListOrganism',
        widget: BigPromotionListOrganism(
          promotionItems: promotions,
          onClick: (index) {},
        ));
  }
}
