import 'package:atomicdesign/ui/molecule/card_tile_molecule.dart';
import 'package:atomicdesign/ui/organism/login_organism.dart';
import 'package:atomicdesign/ui/template/basic_template.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  /// LoginPage
  /// 
  /// This is a login page that use a basicTemplate and loginOrganism for login purposes.
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasicTemplate(mainContent: LoginOrganism(), stateContent: CardTileMolecule(title: 'Authentication:', icon: Icon(Icons.key)));
  }
}

