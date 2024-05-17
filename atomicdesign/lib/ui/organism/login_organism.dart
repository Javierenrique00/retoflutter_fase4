import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/atom/text_button_wo_background_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class LoginOrganism extends StatefulWidget {

  /// ## LoginOrganism
  /// 
  /// This component has a two button and two field components that can be used for login purposes.
  /// 
  /// The components are:
  /// 
  /// - EditFieldAtom for username
  /// - EditFieldAtom for password
  /// - TextButonWobackgroundAtom for forget password option
  /// - TextButtomAtom for validate autentication
  const LoginOrganism({super.key});

  @override
  State<LoginOrganism> createState() => _LoginOrganismState();
}

class _LoginOrganismState extends State<LoginOrganism> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.basicLoginWidth,
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: SizeFoundation.basicLoginHeightSpacer,
            ),
            EditFieldAtom(
                name: 'User:',
                strValue: '',
                type: EditFieldInputType.stringShortType,
                onChanged: (value) {}),
            EditFieldAtom(
                name: 'Password:',
                strValue: '',
                type: EditFieldInputType.pwdType,
                onChanged: (value) {}),
            TextButtonWoBackgroundAtom(textButton: 'Forget password', onPressedButton: () {}),
            const SizedBox(
              height: SizeFoundation.basicLoginHeightSpacer,
            ),
            TextButtonAtom(textButton: 'Login', onPressedButton: () {}),
            const SizedBox(
              height: SizeFoundation.basicLoginHeightSpacer,
            ),
          ],
        ),
      ),
    );
  }
}
