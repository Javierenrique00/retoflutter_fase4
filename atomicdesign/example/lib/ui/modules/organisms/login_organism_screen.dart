import 'package:atomicdesign/ui/organism/login_organism.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class LoginOrganismScreen extends StatelessWidget {
  const LoginOrganismScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(title: "LoginOrganism", widget: LoginOrganism());
  }
}