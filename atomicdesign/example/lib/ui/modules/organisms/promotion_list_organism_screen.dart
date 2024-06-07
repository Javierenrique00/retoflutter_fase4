import 'package:atomicdesign/domain/model/promotion_ui_model.dart';
import 'package:atomicdesign/ui/organism/promotion_list_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class PromotionListOrganismScreen extends StatelessWidget {
  const PromotionListOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final promotions = [
      PromotionUiModel(flagStr: '10%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
      PromotionUiModel(flagStr: '15%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
      PromotionUiModel(flagStr: '20%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
      PromotionUiModel(flagStr: '30%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
      PromotionUiModel(flagStr: '40%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
      PromotionUiModel(flagStr: '50%', imgWidget: Image.network('https://picsum.photos/id/292/200/300')),
    ];

    return PageTemplate(
        title: 'PromotionListOrganism',
        widget: PromotionListOrganism(
          promotionItems: promotions,
          onClick: (index) {},
        ));
  }
}
