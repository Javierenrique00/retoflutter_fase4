import 'package:atomicdesign/ui/organism/login_organism.dart';
import 'package:atomicdesign/ui/organism/register_organism.dart';
import 'package:atomicdesign/ui/template/showcase_template.dart';
import 'package:flutter/material.dart';

class OrganismScreen extends StatelessWidget {
  const OrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ShowcaseTemplate(
      widgetList: [
        const {
          'LoginOrganism': LoginOrganism()
        },
        {
          'RegisterOrganism': RegisterOrganism(register: (String firstName, String lastName, String email, String pwd) {  },)
        },
      ],
    );
  }
}