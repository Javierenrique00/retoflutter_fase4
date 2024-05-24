import 'package:atomicdesign/ui/atom/text_button_wo_short_atom.dart';
import 'package:example/ui/common/color_app.dart';
import 'package:example/ui/common/node_model.dart';
import 'package:flutter/material.dart';

class ScreenTemplate extends StatelessWidget {
  const ScreenTemplate({required this.title, required this.nodes, super.key});
  final String title;
  final List<NodeModel> nodes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: ColorApp.appBarBackground,
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: nodes.length,
          itemBuilder: (BuildContext context, int index) {
            return TextButtonWoShortAtom (
              idButton: index,
              textButton: nodes[index].name,
              onClick: (idButton) => Navigator.pushNamed(context, nodes[index].namedRoute),
                );
          },
        ),
      ),
    );
  }
}
