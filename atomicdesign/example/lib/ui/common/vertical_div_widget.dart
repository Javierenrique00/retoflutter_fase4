import 'package:example/ui/common/color_app.dart';
import 'package:flutter/material.dart';

class VerticalDivWidget extends StatelessWidget {
  const VerticalDivWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider( height:50,indent:  10,endIndent: 30, color: ColorApp.appBarBackground,thickness: 3,);
  }
}