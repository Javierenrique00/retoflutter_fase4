import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class BasicTemplate extends StatelessWidget {

  /// ## BasicTemplate
  /// 
  /// Has two components as input.
  /// 
  /// mainContent is used for displaying information, and stateContent is for complementary data at the top.
  /// 
  /// This template can use for example a Title as stateContent, and mainContent can use all data for example a Productlist.
  const BasicTemplate({required this.mainContent, required this.stateContent, super.key});

  final Widget mainContent;
  final Widget stateContent;

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
