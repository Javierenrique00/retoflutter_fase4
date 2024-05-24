import 'package:atomicdesign/domain/model/product_ui_model.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:atomicdesign/ui/molecule/product_molecule.dart';
import 'package:example/ui/common/page_template.dart';
import 'package:example/ui/common/sizes_app.dart';
import 'package:example/ui/common/vertical_div_widget.dart';
import 'package:flutter/material.dart';

class ProductMoleculeScreen extends StatelessWidget {
  const ProductMoleculeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: 'ProductMolecule',
      widget: Container(
        alignment: Alignment.topCenter,
        width: (SizeFoundation.listProductPageWidth - 4*SizeFoundation.listProductOrganismSpacer - 4*SizeFoundation.listProductOrganismEdgeInset)/2,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Text('Img 200x300'),
            const SizedBox(height: SizesApp.vertSpacer,),
            ProductMolecule(product: ProductUiModel(id: 1,name: 'Miel de abejas saludable',urlImage:'https://picsum.photos/id/312/200/300', price: '2.850'),onclick: (id) {
            },),
            const VerticalDivWidget(),

            const Text('Img 300x200'),
            const SizedBox(height: SizesApp.vertSpacer,),
            ProductMolecule(product: ProductUiModel(id: 1,name: 'Miel de abejas saludable',urlImage:'https://picsum.photos/id/312/300/200', price: '2.850'),onclick: (id) {
            },),
            const VerticalDivWidget(),

            const Text('Img 200x200'),
            const SizedBox(height: SizesApp.vertSpacer,),
            ProductMolecule(product: ProductUiModel(id: 1,name: 'Miel de abejas saludable',urlImage:'https://picsum.photos/id/312/200/200', price: '2.850'),onclick: (id) {
            },),
            const VerticalDivWidget(),

          ],
        ),
      ),
    );
  }
}