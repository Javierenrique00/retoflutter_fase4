import 'package:atomicdesign/ui/atom/text_button_wo_short_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class ListCategoriesOrganism extends StatelessWidget {
  const ListCategoriesOrganism(
      {required this.items, required this.onCLick, super.key});
  final List<String> items;
  final Function(int id) onCLick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.listCategoriesOrganismWidth,
      height: SizeFoundation.listCategoriesOrganismHeight,
      child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return TextButtonWoShortAtom(
              idButton: index,
              textButton: items[index],
              onClick: (int idButton) => onCLick(idButton),
            );
          }),
    );
  }
}
