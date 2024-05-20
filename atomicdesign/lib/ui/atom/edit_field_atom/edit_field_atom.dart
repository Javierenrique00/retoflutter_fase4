import 'package:atomicdesign/ui/atom/edit_field_atom/edit_field_input_type.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EditFieldAtom extends StatefulWidget {

  /// ## EditFieldAtom
  /// 
  /// EditField that can validate data in a form
  /// 
  /// It supports a type for validation as follows:
  /// 
  /// - EditFieldInputType.stringShortType
  /// - EditFieldInputType.stringLongType
  /// - EditFieldInputType.doubleType
  /// - EditFieldInputType.intType
  /// - EditFieldInputType.pwdType
  /// 
  /// Parameter onChanged returns a String with the field entered.
  /// 
  /// For more information see Widget EditField
  const EditFieldAtom({required this.name,required this.strValue,required this.type,required this.onChanged, super.key});

  final Function (String) onChanged;
  final String name;
  final String strValue;
  final EditFieldInputType type;

  @override
  State<EditFieldAtom> createState() => _EditFieldAtomState();
}

class _EditFieldAtomState extends State<EditFieldAtom> {


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(SizeFoundation.basicEditFieldInset),
      child: SizedBox(
        width: SizeFoundation.basicEditFieldWidth,
        height: SizeFoundation.basicEditFieldHeight,
        child: TextFormField(
          initialValue: widget.strValue,
          validator:(value) => validate(value,widget.type),
          onChanged: (String value)=> widget.onChanged(value),
          obscureText: getObscureForPwd(widget.type),
          keyboardType: getKeyboard(widget.type),
          inputFormatters: getInputFormater(widget.type), 
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: widget.name,
          ),
        ),
      ),
    );
  }

  bool getObscureForPwd(EditFieldInputType type){
    if(type == EditFieldInputType.pwdType){
      return true;
    } else {
      return false;
    }
  }

  TextInputType getKeyboard(EditFieldInputType type) => switch(type){
    EditFieldInputType.stringShortType || EditFieldInputType.stringLongType || EditFieldInputType.pwdType => TextInputType.text,
    EditFieldInputType.doubleType || EditFieldInputType.intType  => TextInputType.number,
  };

  List<TextInputFormatter> getInputFormater(EditFieldInputType type) => switch(type){
    EditFieldInputType.stringShortType || EditFieldInputType.stringLongType || EditFieldInputType.pwdType => [FilteringTextInputFormatter.singleLineFormatter ],
    EditFieldInputType.doubleType => [FilteringTextInputFormatter.allow((RegExp("[.0-9]"))) ],
    EditFieldInputType.intType => [FilteringTextInputFormatter.allow((RegExp("[0-9]"))) ],
  };

  String? validate(String? value,EditFieldInputType type) => switch(type){
    EditFieldInputType.stringShortType => checkStringShort(value,type),
    EditFieldInputType.stringLongType => checkStringLong(value,type),
    EditFieldInputType.doubleType => checkDouble(value, type),
    EditFieldInputType.intType => checkInt(value, type),
    EditFieldInputType.pwdType => checkStringShort(value,type),
  };

  String? checkStringShort(String? value,EditFieldInputType type){
    if(value == null || value.isEmpty ){
      return "Entre un valor";
    }else if(value.length > 15){
      return "Debe tener máximo 15 caracteres";
    }else{
      return null;
    }
  }

    String? checkStringLong(String? value,EditFieldInputType type){
    if(value == null || value.isEmpty ){
      return "Entre un valor";
    }else if(value.length > 100){
      return "Debe tener máximo 100 caracteres";
    }else{
      return null;
    }
  }

  String? checkDouble(String? value,EditFieldInputType type){
    if(value == null || value.isEmpty){
      return "Entre un valor";
    }else if(value.length > 10){
        return "Debe tener máximo 10 dígitos";
    }else{
      try{
        double.parse(value);
      }catch(error){
        return "Entre un número válido !";
      }
      return null;
    }
  }

    String? checkInt(String? value,EditFieldInputType type){
    if(value == null || value.isEmpty){
      return "Entre un valor";
    }else if(value.length > 10){
      return "Debe tener máximo 10 dígitos";
    }else{
      try{
        int.parse(value);
      }catch(error){
          return "Entre una cantidad válida !";
      }
      return null;
    }
  }

}