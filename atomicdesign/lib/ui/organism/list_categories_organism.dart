import 'package:atomicdesign/ui/atom/text_button_wo_short_atom.dart';
import 'package:flutter/material.dart';

class ListCategoriesOrganism extends StatelessWidget {
  const ListCategoriesOrganism(
      {required this.items, required this.onCLick, super.key});
  final List<String> items;
  final Function(int id) onCLick;

  @override
  Widget build(BuildContext context) {
    final widgedList = items
        .asMap()
        .map(
          (key, value) => MapEntry(
              key,
              TextButtonWoShortAtom(
                idButton: key,
                textButton: value,
                onClick: (int idButton) => onCLick(idButton),
              ) as Widget),
        )
        .values
        .toList();

    return SizedBox(
      width: 400,
      child: Row(
        children: widgedList,
      ),
    );
  }

}
