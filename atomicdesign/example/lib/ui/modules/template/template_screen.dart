import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Templates', nodes: [
        NodeModel(name: 'AppWbarTemplate', namedRoute: Navigation.appWbarTemplateScreen),
    ]);
  }
}