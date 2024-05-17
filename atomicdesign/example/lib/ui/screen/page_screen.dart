import 'package:atomicdesign/ui/page/login_page.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShowcaseTemplate(
      widgetList: [
        {
          'Login Page': LoginPage()
        },
      ],
    );
  }
}