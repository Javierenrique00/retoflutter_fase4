import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscountSvgAtom extends StatelessWidget {
  const DiscountSvgAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return _svgIconFastStore();
  }

  Widget _svgIconFastStore() => SvgPicture.asset(
        width: SizeFoundation.svgRectSize,
        height: SizeFoundation.svgRectSize,
        "packages/atomicdesign/lib/assets/discount.svg",
        semanticsLabel: 'Discount',
        fit: BoxFit.contain,
      );
}