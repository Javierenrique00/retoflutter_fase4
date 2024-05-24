import 'package:atomicdesign/ui/atom/clothes_svg_atom.dart';
import 'package:atomicdesign/ui/atom/discount_svg_atom.dart';
import 'package:atomicdesign/ui/atom/loading_atom.dart';
import 'package:atomicdesign/ui/atom/logo_svg_atom.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/sizes_app.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  const ResourcesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'Resources',
      widget: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Text('LoadingAtom'),
            SizedBox(height: SizesApp.vertSpacer,),
            LoadingAtom(),
            VerticalDivWidget(),

            Text('LogoSvgAtom'),
            SizedBox(height: SizesApp.vertSpacer,),
            LogoSvgAtom(),
            VerticalDivWidget(),

            Text('DiscountSvgAtom'),
            SizedBox(height: SizesApp.vertSpacer,),
            DiscountSvgAtom(),
            VerticalDivWidget(),

            Text('ClothesSvgAtom'),
            SizedBox(height: SizesApp.vertSpacer,),
            ClothesSvgAtom(),
            VerticalDivWidget(),
          ],
        ),
      ),
    );
  }
}