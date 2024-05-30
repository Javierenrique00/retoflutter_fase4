import 'package:atomicdesign/domain/model/pdp_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/organism/detail_organism.dart';
import 'package:flutter/widgets.dart';

class PdpPage extends StatelessWidget {
  const PdpPage({required this.detail, required this.addToCart ,super.key});
  final PdpUiModel detail;
  final Function (int id) addToCart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(SizeFoundation.pdpPagePading),
        child: DetailOrganism(
          detail: detail,
          addToCart:(id) => addToCart(id),
        ),
      ),
    );
  }
}
