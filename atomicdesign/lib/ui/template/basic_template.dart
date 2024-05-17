import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class BasicTemplate extends StatelessWidget {
  final Widget mainContent;
  final Widget stateContent;
  const BasicTemplate(
      {required this.mainContent, required this.stateContent, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeFoundation.basictemplateInsetBorder),
      child: Column(children: [
        Container(alignment: Alignment.topRight, child: stateContent,),
        Container(alignment: Alignment.topCenter, child: mainContent,),
      ],),
    );
  }
}
