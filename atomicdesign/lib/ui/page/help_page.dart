
import 'package:atomicdesign/ui/atom/vertical_div_Atom.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({required this.helpTitle, required this.helpMsg,required this.contactTitle ,required this. contactMsg, super.key});
  final String helpTitle;
  final String helpMsg;
  final String contactTitle;
  final String contactMsg;

  @override
  Widget build(BuildContext context) {
    return ListView( children: [
      Text(helpTitle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineMedium,),
      const SizedBox(height: 12,),
      Text(helpMsg,style: Theme.of(context).textTheme.bodyMedium,),
      const VerticalDivAtom(),
      Text(contactTitle,textAlign: TextAlign.center,style: Theme.of(context).textTheme.headlineMedium,),
      const SizedBox(height: 12,),
      Text(contactMsg,style: Theme.of(context).textTheme.bodyMedium,),
      const VerticalDivAtom(),

    ],);
  }
}