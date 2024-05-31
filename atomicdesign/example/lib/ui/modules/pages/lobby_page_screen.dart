import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/page/lobby_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';


class LobbyPageScreen extends StatelessWidget {
  const LobbyPageScreen({ super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(title: 'LobbyPage', widget: LobbyPage(categoriesNames: const ['Categories','Search'], categoriesWidgets: const [ClothesSvgAtom(),Icon(Icons.search)],onClickCategories:(id) {},));
  }
}