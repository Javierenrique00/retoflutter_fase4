import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/list_categories_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class ListCategoryOrganismScreen extends StatelessWidget {
  const ListCategoryOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'ListCategoriesOrganism',
      widget: Column(children: [
        const Text('Few short items'),
        SizedBox(
        height: SizeFoundation.listCategoriesOrganismHeight,
        child: ListCategoriesOrganism(
          items: const ['Category 1', ' Category 2', 'Category 3'],
          onCLick: (id) {},
        ),
      ),
      const VerticalDivWidget(),
      const Text('Large items, and more quantity'),
      SizedBox(
        height: SizeFoundation.listCategoriesOrganismHeight,
        child: ListCategoriesOrganism(
          items: const ['Category 1 large Description', ' Category 2 large Description', 'Category 3 large Description',' Category 4 large Description', 'Category 5 large Description'],
          onCLick: (id) {},
        ),
      ),
      const VerticalDivWidget(),
      ],)
    );
  }
}
