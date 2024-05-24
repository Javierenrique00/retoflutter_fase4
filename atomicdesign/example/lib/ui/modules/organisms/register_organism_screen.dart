import 'package:atomicdesign/ui/organism/register_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class RegisterOrganismScreen extends StatelessWidget {
  const RegisterOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(title: "RegisterOrganism",widget: RegisterOrganism(register: (firstName, lastName, email, pwd) {
      
    },),);
  }
}