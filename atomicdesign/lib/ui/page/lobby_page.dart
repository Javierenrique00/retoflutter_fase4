import 'package:atomicdesign/ui/organism/list_categories_image_organism.dart';
import 'package:flutter/material.dart';

class LobbyPage extends StatelessWidget {
  const LobbyPage({
    required this.categoriesNames,
    required this.categoriesWidgets,
    required this.onClickCategories,
    super.key});
  final List<String> categoriesNames;
  final List<Widget> categoriesWidgets;
  final Function(int id) onClickCategories;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width,
        child: Column(
          children: [
            ListCategoriesImageOrganism(
                items: categoriesNames, widgets: categoriesWidgets,onCLick: (id) => onClickCategories(id)),
            const Expanded(
              child: Text('Content'),
            ),
          ],
        ),
      );
  }
}