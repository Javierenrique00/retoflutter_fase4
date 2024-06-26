import 'package:atomicdesign/ui/atom/circle_number_atom.dart';
import 'package:atomicdesign/ui/atom/flag_big_promotion_atom.dart';
import 'package:atomicdesign/ui/atom/flag_number_atom.dart';
import 'package:atomicdesign/ui/atom/qty_button_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class OtherAtomsScreen extends StatelessWidget {
  const OtherAtomsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
        title: 'Other Atoms',
        widget: Column(
          children: [
            const Text('CircleNumberAtom'),
            const SizedBox(
              height: SizeFoundation.basicSpacer,
            ),
            const CircleNumberAtom(number: '25'),
            const VerticalDivWidget(),

            const Text('QtyButtonAtom'),
            const SizedBox(
              height: SizeFoundation.basicSpacer,
            ),
            QtyButtonAtom(qty: 3, clickOnMinus: (){}, clickOnPlus: (){}),
            const VerticalDivWidget(),

            const Text('FlagNumberAtom'),
                        const SizedBox(
              height: SizeFoundation.basicSpacer,
            ),
            const FlagNumberAtom(discount: '25%'),
            const VerticalDivWidget(),

            const Text('FlagBigPromotionAtom'),
            const SizedBox(
              height: SizeFoundation.basicSpacer,
            ),
            const FlagBigPromotionAtom(bannerStr: 'Womens OutFit'),
            const VerticalDivWidget(),
          ],
        ));
  }
}
