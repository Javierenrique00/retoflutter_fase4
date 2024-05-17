
import 'package:atomicdesign/ui/molecule/card_tile_molecule.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class MoleculeScreen extends StatelessWidget {
  const MoleculeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShowcaseTemplate(
      widgetList: [
        {
          'CardTileMolecule': CardTileMolecule(title: 'Any title',icon: Icon(Icons.access_alarm),),
        },
      ],
    );
  }
}
