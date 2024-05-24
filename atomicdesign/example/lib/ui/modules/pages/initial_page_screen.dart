import 'package:atomicdesign/ui/page/initial_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class InitialPageScreen extends StatelessWidget {
  const InitialPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(title: 'InitialPage', widget: InitalPage());
  }
}