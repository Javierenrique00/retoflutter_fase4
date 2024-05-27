import 'package:atomicdesign/domain/model/pdp_ui_model.dart';
import 'package:atomicdesign/ui/organism/detail_organism.dart';
import 'package:flutter/widgets.dart';

class PdpPage extends StatelessWidget {
  const PdpPage({required this.detail, super.key});
  final PdpUiModel detail;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: DetailOrganism(detail: detail,addToCart: (){},),
    );
  }
}