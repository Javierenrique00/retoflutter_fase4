import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_wo_background_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_wo_short_atom.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Buttons',
      widget: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              child: TextButtonAtom(
                  textButton: 'TextButtonAtom', onPressedButton: () {}),
            ),
            const VerticalDivWidget(),
            SizedBox(
              width: double.infinity,
              child: TextButtonWoBackgroundAtom(
                textButton: 'TextButtonWoBackgroundAtom',
                onPressedButton: () {},
              ),
            ),
            const VerticalDivWidget(),
            TextButtonWoShortAtom(
                idButton: 1,
                textButton: 'TextButtonWoShortAtom',
                onClick: (idButton) {},
              ),
          ],
        ),
      ),
    );
  }
}
