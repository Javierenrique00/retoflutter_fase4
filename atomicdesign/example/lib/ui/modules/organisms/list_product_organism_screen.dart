import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/list_products_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class ListProductsOrganismScreen extends StatelessWidget {
  const ListProductsOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product1 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/312/200/200',
        name: "Miel de abejas",
        price: '2.850');
    final product2 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/312/200/300',
        name: "Miel de abejas",
        price: '2.850');
    final product3 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/312/300/200',
        name: "Miel de abejas",
        price: '2.850');
    final product4 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/237/200/200',
        name: "Miel de abejas",
        price: '2.850');
    final product5 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/237/200/300',
        name: "Miel de abejas",
        price: '2.850');
    final product6 = ProductUiModel(
        id: 1,
        urlImage: 'https://picsum.photos/id/237/300/200',
        name: "Miel de abejas",
        price: '2.850');

    return PageTemplate(
      title: 'ListProductsOrganism',
      widget: SizedBox(
        width: SizeFoundation.listProductPageWidth,
        child: ListProductsOrganism(
          products: [
            product1,
            product2,
            product3,
            product4,
            product5,
            product6
          ],
          shrinkWrap: false,
          onClick: (id) {},
        ),
      ),
    );
  }
}
