import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class MoleculesScreen extends StatelessWidget {
  const MoleculesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Molecules', nodes: [
      NodeModel(name: 'ProductMolecule', namedRoute: Navigation.productMoleculeScreen),
      NodeModel(name: 'CartCountertMolecule', namedRoute: Navigation.cartCounterMoleculeScreen),
      NodeModel(name: 'Other molecules', namedRoute: Navigation.otherMoleculesScreen),
    ]);
  }
}