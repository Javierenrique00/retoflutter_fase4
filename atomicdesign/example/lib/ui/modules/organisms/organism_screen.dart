import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class OrganismScreen extends StatelessWidget {
  const OrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Organisms', nodes: [
      NodeModel(name: 'ListCategoriesOrganism', namedRoute: Navigation.listCategoryOrganismScreen),
      NodeModel(name: 'ListProductsOrganism', namedRoute: Navigation.listProductOrganismScreen),
      NodeModel(name: 'RegisterOrganism', namedRoute: Navigation.registerOrganismScreen),
      NodeModel(name: 'LoginOrganism', namedRoute: Navigation.loginOrganismScreen),

    ]);
  }
}