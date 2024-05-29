import 'package:example/ui/common/node_model.dart';
import 'package:example/ui/common/screen_template.dart';
import 'package:example/ui/navigation/navigation.dart';
import 'package:flutter/material.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(title: 'Pages', nodes: [
      NodeModel(name: 'InitialPage', namedRoute: Navigation.initialPageScreen),
      NodeModel(name: 'ListProductsPage', namedRoute: Navigation.listProductPageScreen),
      NodeModel(name: 'RegisterPage', namedRoute: Navigation.registerPageScreen),
      NodeModel(name: 'TryAgainPage', namedRoute: Navigation.tryAgainPageScreen),
      NodeModel(name: 'LoadingPage', namedRoute: Navigation.loadingPageScreen),
      NodeModel(name: 'PdpPage', namedRoute: Navigation.pdpPageScreen),
      NodeModel(name: 'CartPage', namedRoute: Navigation.cartPageScreen),

    ]);
  }
}