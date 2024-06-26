import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/organism/cart_list_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class CartListOrganismScreen extends StatelessWidget {
  const CartListOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product1 = ProductUiModel(id: 1, urlImage: 'https://picsum.photos/id/292/200/300', name: 'Product1', price: '1.850');
    final product2 = ProductUiModel(id: 2, urlImage: 'https://picsum.photos/id/292/200/300', name: 'Product2', price: '2.850');
    final product3 = ProductUiModel(id: 3, urlImage: 'https://picsum.photos/id/292/200/300', name: 'Product3', price: '3.850');

    return PageTemplate(title: 'CartListOrganism', widget: CartListOrganism(products: [product1,product2,product3], qtys: const [2,3,4], clickOnMinus: (index){}, clickOnPlus: (index){}));
  }
}