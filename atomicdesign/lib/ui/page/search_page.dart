import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/organism/list_products_organism.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({required this.products,required this.onItemClick ,required this.onTextChanged, super.key});
  final List<ProductUiModel> products;
  final Function (int id) onItemClick;
  final Function (String textChanged)  onTextChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Row(children: [
              const Icon(Icons.search),
              const SizedBox(width: 8),
              Expanded(child: TextFormField(onChanged:(value) => onTextChanged(value),decoration: const InputDecoration(hintText: 'Search'), ),)
            ],),
            const SizedBox(height: 16),
            Expanded(
              child: ListProductsOrganism(
                products: products,
                shrinkWrap: false,
                onClick: (int id) => onItemClick(id),
              ),
            ),
          ],
        );
  }
}