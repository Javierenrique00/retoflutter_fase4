import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Show Case', nodes: [
      NodeModel(name: 'Atoms', namedRoute: Navigation.atomsScreen),
      NodeModel(name: 'Molecules', namedRoute: Navigation.moleculeScreen),
      NodeModel(name: 'Organism', namedRoute: Navigation.organismsScreen),
      // NodeModel(name: 'Template', namedRoute: Navigation.atomsScreen),
       NodeModel(name: 'Pages', namedRoute: Navigation.pagesScreen),
    ]);
  }
}
