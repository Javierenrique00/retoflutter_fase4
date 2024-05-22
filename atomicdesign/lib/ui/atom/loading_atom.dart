import 'package:atomicdesign/ui/foundation/colors_foundation.dart';
import 'package:flutter/material.dart';

class LoadingAtom extends StatelessWidget {
  const LoadingAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
          color: ColorsFoundation.loadingAtomColor,
        ),
      );
  }
}