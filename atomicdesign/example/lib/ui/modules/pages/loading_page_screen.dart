import 'package:atomicdesign/ui/page/loading_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class LoadingPageScreen extends StatelessWidget {
  const LoadingPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(title: 'LoadingPage', widget: LoadingPage(),);
  }
}