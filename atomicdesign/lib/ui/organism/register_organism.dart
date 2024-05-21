import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class RegisterOrganism extends StatefulWidget {
  const RegisterOrganism({required this.register, super.key});
  final  Function (String firstName,String lastName,String email, String pwd) register;

  @override
  State<RegisterOrganism> createState() => _RegisterOrganismState();
}

class _RegisterOrganismState extends State<RegisterOrganism> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _pwd = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.basicLoginWidth,
      child: Card(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: SizeFoundation.basicLoginHeightSpacer,
              ),
              EditFieldAtom(
                  name: 'First Name:',
                  strValue: '',
                  type: EditFieldInputType.stringShortType,
                  onChanged: (value) { _firstName = value;}),
              EditFieldAtom(
                  name: 'Last Name:',
                  strValue: '',
                  type: EditFieldInputType.stringShortType,
                  onChanged: (value) { _lastName = value;}),
              EditFieldAtom(
                  name: 'email:',
                  strValue: '',
                  type: EditFieldInputType.emailType,
                  onChanged: (value) { _email = value;}),
              EditFieldAtom(
                  name: 'Password:',
                  strValue: '',
                  type: EditFieldInputType.pwdType,
                  onChanged: (value) { _pwd = value;}),
              const SizedBox(
                height: SizeFoundation.basicLoginHeightSpacer,
              ),
              TextButtonAtom(textButton: 'Register', onPressedButton: () {
                  if(_formKey.currentState!.validate()){
                        widget.register(_firstName,_lastName,_email,_pwd);
                    }
              }),
              const SizedBox(
                height: SizeFoundation.basicLoginHeightSpacer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
