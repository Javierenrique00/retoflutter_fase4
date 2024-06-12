import 'package:flutter/material.dart';

class VerticalDivAtom extends StatelessWidget {
  const VerticalDivAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider( height:50,indent:  10,endIndent: 30, color: Theme.of(context).dividerColor,thickness: 3,);
  }
}