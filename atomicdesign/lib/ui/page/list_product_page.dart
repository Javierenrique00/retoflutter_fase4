import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/list_categories_organism.dart';
import 'package:atomicdesign/ui/organism/list_products_organism.dart';
import 'package:flutter/material.dart';

class ListProductPage extends StatelessWidget {
  const ListProductPage(
      {required this.products,
      required this.shrinkWrap,
      required this.onClick,
      required this.categories,
      required this.onClickCategories,
      super.key});
  final List<ProductUiModel> products;
  final bool shrinkWrap;
  final Function(int id) onClick;
  final List<String> categories;
  final Function(int id) onClickCategories;

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeFoundation.listProductPageWidth,
        child: Column(
          children: [
            ListCategoriesOrganism(items: categories, onCLick: (id)=> onClickCategories(id)),
            ListProductsOrganism(
          products: products,
          shrinkWrap: shrinkWrap,
          onClick: (int id) => onClick(id),
        ),
          ],
        ),
      ),
    );
  }
}
