import 'package:atomicdesign/domain/model/pdp_ui_model.dart';
import 'package:atomicdesign/ui/organism/detail_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class DetailOrganismScreen extends StatelessWidget {
  const DetailOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final detail = PdpUiModel(id: 1, title: 'Cebolla roja', price: '12.850', description: 'Cebolla roja traida de los campos de Colombia.', category: 'Mercado', image: 'https://picsum.photos/id/292/300/200');
    return PageTemplate(title: 'DetailOrganism', widget: DetailOrganism(detail: detail, addToCart:(id) => null,));
  }
}