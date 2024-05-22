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
    return Center(
      child: SizedBox(
        width: SizeFoundation.listProductPageWidth,
        child: ListProductsOrganism(products: products, shrinkWrap: shrinkWrap, onClick: (int id)=>onClick(id),), 
        ),
      );
  }
}