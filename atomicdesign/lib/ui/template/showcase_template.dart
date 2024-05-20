import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class ShowcaseTemplate extends StatelessWidget {
  /// ## ShowcaseTemplate
  ///
  /// Is used in the Showcase example app for displaying all the atomic design components of the package.
  const ShowcaseTemplate({required this.widgetList, super.key});

  final List<Map<String, Widget>> widgetList;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final totalUnity = (width - 2 * SizeFoundation.showcaseTemplateSpacer)/(SizeFoundation.showcaseTemplaTextWeight + SizeFoundation.showcaseTemplaWidgetWeight);
    final textWidth = SizeFoundation.showcaseTemplaTextWeight * totalUnity ;
    final widgetWidth =  SizeFoundation.showcaseTemplaWidgetWeight * totalUnity ;
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
                  SizedBox(
                    width: textWidth,
                    child: Text(widgetList[index].entries.first.key),
                  ),
                  SizedBox(
                    width: widgetWidth,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.centerRight,
                      child: widgetList[index].entries.first.value,
                    ),
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
