import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/atom/discount_svg_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:atomicdesign/ui/atom/logo_svg_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_wo_background_atom.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class AtomScreen extends StatelessWidget {
  const AtomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcaseTemplate(
      widgetList: [
        {
          'TextButtonAtom': TextButtonAtom(
            textButton: 'Push me',
            onPressedButton: () {},
          )
        },
        {
          'TextButtonWoBackgroundAtom': TextButtonWoBackgroundAtom(
            textButton: 'Push me',
            onPressedButton: () {},
          )
        },
        {
          'EditFieldAtom': EditFieldAtom(
              name: 'Nombre:',
              strValue: 'Pepito',
              type: EditFieldInputType.stringShortType,
              onChanged: (value) {})
        },
        const {
          'LogoSvgAtom': LogoSvgAtom()
        },
        const {
          'DiscountSvgAtom': DiscountSvgAtom()
        },
        const {
          'ClothesSvgAtom': ClothesSvgAtom()
        },
      ],
    );
  }
}
