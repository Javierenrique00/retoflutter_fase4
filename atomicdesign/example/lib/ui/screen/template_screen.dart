import 'package:atomicdesign/ui/template/basic_template.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShowcaseTemplate(
      widgetList: [
        {
          'BasicTemplate': BasicTemplate(
            mainContent: Placeholder(),
            stateContent: SizedBox(
              width: 150,
              height: 40,
              child: Placeholder(),
            ),
          )
        },
      ],
    );
  }
}
