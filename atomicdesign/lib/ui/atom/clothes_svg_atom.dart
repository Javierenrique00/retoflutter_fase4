import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClothesSvgAtom extends StatelessWidget {
  const ClothesSvgAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return _svgIconFastStore();
  }

  Widget _svgIconFastStore() => SvgPicture.asset(
        "packages/atomicdesign/lib/assets/clothes.svg",
        colorFilter: const ColorFilter.mode(
            ColorsFoundation.basicLightButtonBackground, BlendMode.srcIn),
        semanticsLabel: 'Clothes',
        fit: BoxFit.contain,
      );
}