import 'package:atomicdesign/ui/atom/circle_number_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class OtherAtomsScreen extends StatelessWidget {
  const OtherAtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(title: 'Other Atoms', widget: Column(children: [
      Text('CircleNumberAtom'),
      SizedBox(
        height: SizeFoundation.basicSpacer,
      ),
      CircleNumberAtom(number: '25'),
      VerticalDivWidget(),
    ],));
  }
}