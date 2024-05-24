
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_atom.dart';
import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class EditTextFieldScreen extends StatelessWidget {
  const EditTextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'EditTextFields',
      widget: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('EditFieldAtom'),
            SizedBox(
              width: double.infinity,
              child: EditFieldAtom(
                name: "Email:",
                strValue: '',
                type: EditFieldInputType.emailType,
                onChanged: (p0) {
                  
                },
            ),
            ),
            const VerticalDivWidget(),
          ],
        ),
      ),
    );
  }
}