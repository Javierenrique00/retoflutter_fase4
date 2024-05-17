import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class CardTileMolecule extends StatelessWidget {
  final String title;
  final Icon icon;
  const CardTileMolecule({required this.title,required this.icon ,super.key});

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
