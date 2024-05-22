import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/organism/list_products_organism.dart';
import 'package:atomicdesign/ui/organism/login_organism.dart';
import 'package:atomicdesign/ui/organism/register_organism.dart';
import 'package:atomicdesign/ui/organism/scroll_view_organism.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class OrganismScreen extends StatelessWidget {
  const OrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product1 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/292/200/200', name: 'Cebolla roja', price: '2.850');
    final product2 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/312/200/200', name: 'Miel del campo', price: '25.000');
    final product3 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/300/200/200', name: 'Cebolla roja', price: '2.850');
    final product4 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/123/200/200', name: 'Miel del campo', price: '25.000');

    return ShowcaseTemplate(
      widgetList: [
        const {
          'LoginOrganism': LoginOrganism()
        },
        {
          'RegisterOrganism': RegisterOrganism(register: (String firstName, String lastName, String email, String pwd) {  },)
        },
        {
          'ScrollViewOrganism': ScrollViewOrganism(),
        },
        {
          'ListProductOrganism': ListProductsOrganism(products: [
            product1,
            product2,
            product3,
            product4
          ], shrinkWrap: true, onClick: (int id) {  },),
        },
      ],
    );
  }
}