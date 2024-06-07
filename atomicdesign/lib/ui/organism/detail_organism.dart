import 'package:atomicdesign/domain/model/pdp_ui_model.dart';
import 'package:atomicdesign/ui/atom/text_button_atom.dart';
import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:atomicdesign/ui/foundation/font_size_foundation.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailOrganism extends StatelessWidget {
  const DetailOrganism(
      {required this.detail, required this.addToCart, super.key});
  final Function(int id) addToCart;
  final PdpUiModel detail;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Image.network(detail.image,fit: BoxFit.contain,),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            maxLines: SizeFoundation.pdpTitleLines,
            detail.title,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: FontSizeFoundation.sizeX3),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            maxLines: SizeFoundation.pdpTitleLines,
            detail.description,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: FontSizeFoundation.sizeX1),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            maxLines: SizeFoundation.pdpTitleLines,
            detail.price,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: FontSizeFoundation.sizeX2,
                color: ColorsFoundation.pdpPriceColor),
          ),
        ),
        const SizedBox(
          height: SizeFoundation.pdpSpacer,
        ),
        TextButtonAtom(
          textButton: 'Add to cart',
          onPressedButton: () => addToCart(detail.id),
        )
      ],
    );
  }
}
