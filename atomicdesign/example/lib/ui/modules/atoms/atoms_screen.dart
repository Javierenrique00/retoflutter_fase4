
import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class AtomsScreen extends StatelessWidget {
  const AtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Atoms', nodes: [
      NodeModel(name: 'Buttons', namedRoute: Navigation.buttonsScreen),
      NodeModel(name: 'EditTextFields', namedRoute: Navigation.editTextFieldScreen),
      NodeModel(name: 'Other Atoms', namedRoute: Navigation.otherAtomsScreen),
      NodeModel(name: 'Resources', namedRoute: Navigation.resourcesScreen),
    ]);
  }
}