import 'package:atomicdesign/ui/page/try_again_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class TryAgainPageScreen extends StatelessWidget {
  const TryAgainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(title: 'TryAgainPage', widget: TryAgainPage(onPressed: () {
    },),);
  }
}