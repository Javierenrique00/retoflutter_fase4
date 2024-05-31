import 'package:atomicdesign/ui/atom/text_button_wo_short_image_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class ListCategoriesImageOrganism extends StatelessWidget {
  const ListCategoriesImageOrganism(
      {required this.items,
      required this.widgets,
      required this.onCLick,
      super.key});
  final List<String> items;
  final List<Widget> widgets;
  final Function(int id) onCLick;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width,
      height: SizeFoundation.listCategoriesImageOrganismHeight,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TextButtonWoShortImageAtom(
              idButton: index,
              textButton: items[index],
              imageWidget: widgets[index],
              onClick: (int idButton) => onCLick(idButton),
            );
          }),
    );
  }
}

