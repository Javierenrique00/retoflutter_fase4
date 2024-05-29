import 'dart:math';

import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CircleNumberAtom extends StatelessWidget {
  const CircleNumberAtom({required this.number, super.key});
  final String number;

  @override
  Widget build(BuildContext context) {
    final circleWidth = SizeFoundation.circleNumbertAtomLengthBase * sqrt(number.length) ;
    return Container(
              width: circleWidth,
              height: circleWidth,
              decoration: const BoxDecoration(
                color: ColorsFoundation.circleNumberBackground,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  number,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: SizeFoundation.circleNumbertextFontSize,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            );
  }
}