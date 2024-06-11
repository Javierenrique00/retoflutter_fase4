import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CircleNumberAtom extends StatelessWidget {
  const CircleNumberAtom({required this.number, super.key});
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
              constraints: const BoxConstraints(maxWidth: 50.0,maxHeight: 50.0),
              padding: const EdgeInsets.symmetric(horizontal: 2.5,vertical: 2.5),
              decoration: const BoxDecoration(
                color: ColorsFoundation.circleNumberBackground,
                shape: BoxShape.circle,
              ),
              child: Text(
                  number,
                  softWrap: true,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: SizeFoundation.circleNumbertextFontSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            );
  }
}