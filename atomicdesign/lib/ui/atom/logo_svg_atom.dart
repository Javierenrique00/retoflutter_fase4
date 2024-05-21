import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoSvgAtom extends StatelessWidget {
  const LogoSvgAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return _svgIconFastStore();
  }

  Widget _svgIconFastStore() => SvgPicture.asset(
        "packages/atomicdesign/lib/assets/plain_fast_store.svg",
        colorFilter: const ColorFilter.mode(
            ColorsFoundation.basicLightButtonBackground, BlendMode.srcIn),
        semanticsLabel: 'JR Store logo',
        fit: BoxFit.contain,
      );


}

