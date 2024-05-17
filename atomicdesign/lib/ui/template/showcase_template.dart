import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class ShowcaseTemplate extends StatelessWidget {
  final List<Map<String, Widget>> widgetList;

  /// ## ShowcaseTemplate
  /// 
  /// Is used in the Showcase example app for displaying all the atomic design components of the package.
  const ShowcaseTemplate({required this.widgetList, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeFoundation.showcaseTemplateSpacer),
      child: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: SizeFoundation.showcaseTemplateSpacer),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widgetList[index].entries.first.key),
                  Container(
                    alignment: Alignment.centerRight,
                    child: widgetList[index].entries.first.value,
                  ),
                ],
              ),
              const Divider(),
            ],
          );
        },
      ),
    );
  }
}
