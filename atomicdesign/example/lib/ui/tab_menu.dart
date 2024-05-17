import 'package:example/ui/screen/atom_screen.dart';
import 'package:example/ui/screen/molecule_screen.dart';
import 'package:example/ui/screen/organism_screen.dart';
import 'package:example/ui/screen/page_screen.dart';
import 'package:example/ui/screen/template_screen.dart';
import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.star),
              text: 'Atom',
            ),
            Tab(
              icon: Icon(Icons.category),
              text: 'Molecule',
            ),
            Tab(
              icon: Icon(Icons.calculate_outlined),
              text: 'Organism',
            ),
            Tab(
              icon: Icon(Icons.space_dashboard),
              text: 'Template',
            ),
            Tab(
              icon: Icon(Icons.web_asset),
              text: 'Page',
            ),
          ]),
        ),
        body: const TabBarView(children: [
          AtomScreen(),
          MoleculeScreen(),
          OrganismScreen(),
          TemplateScreen(),
          PageScreen(),
        ],),
      ),
    );
  }
}