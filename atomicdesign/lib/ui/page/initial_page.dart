import 'package:atomicdesign/ui/atom/logo_svg_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class InitalPage extends StatelessWidget {
  const InitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeFoundation.initalPageInsets),
      child: const LogoSvgAtom(),
    );
  }
}
