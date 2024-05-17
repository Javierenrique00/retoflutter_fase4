import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_wo_background_atom.dart';
import 'package:atomicdesign/ui/foundation/theme_foundation.dart';
import 'package:atomicdesign/ui/molecule/card_tile_molecule.dart';
import 'package:atomicdesign/ui/organism/login_organism.dart';
import 'package:atomicdesign/ui/template/basic_template.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicLightThemeFoundation,
      darkTheme: basicDarkThemeFoundation,
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              const BasicTemplate(
                mainContent: Placeholder(),
                stateContent: CardTileMolecule(
                  title: 'State',
                ),
              ),
              const LoginOrganism(),
              const CardTileMolecule(
                title: 'Titulo del widget',
              ),
              EditFieldAtom(
                  name: 'Nombre:',
                  strValue: 'Pepito',
                  type: EditFieldInputType.stringShortType,
                  onChanged: (value) {}),
              TextButtonAtom(
                textButton: 'Push me',
                onPressedButton: () {},
              ),
              TextButtonWoBackgroundAtom(
                textButton: 'Push me',
                onPressedButton: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
