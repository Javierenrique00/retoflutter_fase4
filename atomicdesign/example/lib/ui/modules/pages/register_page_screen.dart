import 'package:atomicdesign/ui/page/register_page.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:flutter/material.dart';

class RegisterPageScreen extends StatelessWidget {
  const RegisterPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(title: 'RegisterPage', widget: Registerpage(register: (firstName, lastName, email, pwd) {
    },),);
  }
}