import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/cart_counter_molecule.dart';
import 'package:flutter/material.dart';

class AppWbarTemplate extends StatelessWidget {
  const AppWbarTemplate({required this.title, required this.counter,required this.onCLickCounter ,required this.child,super.key});
  final String title;
  final Widget child;
  final String counter;
  final Function ()onCLickCounter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [CartCounterMolecule(counter: counter, onClick: onCLickCounter),const SizedBox(width: SizeFoundation.appWbarTemplateCartSpacer,)],
        backgroundColor: ColorsFoundation.basicAppbarBackgroundColor,
      ),
      body: child,
    );
  }
}
