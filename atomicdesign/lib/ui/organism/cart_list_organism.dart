import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/molecule/cart_item_molecule.dart';
import 'package:flutter/material.dart';

class CartListOrganism extends StatelessWidget {
  const CartListOrganism({required this.products,required this.qtys, required this.clickOnMinus, required this.clickOnPlus, super.key});
  final List<ProductUiModel> products;
  final List<int> qtys;
  final Function (int index) clickOnMinus;
  final Function (int index) clickOnPlus;


  @override
  Widget build(BuildContext context) {
    final listWidgets = products.asMap().map((key, value) => MapEntry(key, CartItemMolecule(product: value, qty: qtys[key], clickOnMinus:() => clickOnMinus(key), clickOnPlus:() => clickOnPlus(key),) as Widget)).values.toList();
    return ListView(
      shrinkWrap: true,
      children: listWidgets,);
  }
}