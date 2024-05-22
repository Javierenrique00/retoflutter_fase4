import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/list_products_organism.dart';
import 'package:flutter/material.dart';

class ListProductPage extends StatelessWidget {
  const ListProductPage({required this.products,required this.shrinkWrap,required this.onClick , super.key});
  final List<ProductUiModel> products;
  final bool shrinkWrap;
  final Function (int id) onClick;
  
  @override
  @override
  Widget build(BuildContext context) {

    final product1 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/292/200/200', name: 'Cebolla roja', price: '2.850');
    final product2 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/312/200/200', name: 'Miel del campo', price: '25.000');
    final product3 = ProductUiModel(id: 1, urlImage:'https://picsum.photos/id/300/200/200', name: 'Cebolla roja', price: '2.850');
    final product4 = ProductUiModel(id: 2, urlImage:'https://picsum.photos/id/123/200/200', name: 'Miel del campo', price: '25.000');

    return Center(
      child: SizedBox(
        width: SizeFoundation.listProductPageWidth,
        child: ListProductsOrganism(products: [product1,product2,product3,product4], shrinkWrap: shrinkWrap, onClick: (int id)=>onClick(id),), 
        ),
      );
  }
}