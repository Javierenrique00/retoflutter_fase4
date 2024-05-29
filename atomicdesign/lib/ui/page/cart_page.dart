import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/organism/cart_list_organism.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage(
      {required this.products,
      required this.qtys,
      required this.clickOnMinus,
      required this.clickOnPlus,
      required this.totalPrice,
      super.key});
  final List<ProductUiModel> products;
  final List<int> qtys;
  final Function(int index) clickOnMinus;
  final Function(int index) clickOnPlus;
  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CartListOrganism(
          products: products,
          qtys: qtys,
          clickOnMinus: (index) => clickOnMinus(index),
          clickOnPlus: (index) => clickOnPlus(index),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Card(
            child: Container(padding: const EdgeInsets.all(16.0), child: Text(
              'Total price:$totalPrice',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),)
          ),
        ),
      ],
    );
  }
}
