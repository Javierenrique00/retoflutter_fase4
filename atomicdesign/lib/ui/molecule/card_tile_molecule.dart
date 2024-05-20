import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CardTileMolecule extends StatelessWidget {

  /// ## CardTileMolecule
  /// 
  /// Small card that has an Icon and a text by to side.
  const CardTileMolecule({required this.title,required this.icon ,super.key});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeFoundation.basicCardTileWidth,
      height: SizeFoundation.basicCardTileHeight,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              width: SizeFoundation.basicCardTileSpacer,
            ),
            Flexible(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
