import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/register_organism.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatelessWidget {
  const Registerpage({required this.register, super.key});
  final Function(String firstName, String lastName, String email, String pwd)
      register;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeFoundation.registerPageWidth,
        child: RegisterOrganism(
          register: ((firstName, lastName, email, pwd)=>register(firstName,lastName,email,pwd)),
        ),
      ),
    );
  }
}
