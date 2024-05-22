import 'package:atomicdesign/ui/atom/loading_atom.dart';
import 'package:atomicdesign/ui/foundation/size_foundation.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: SizeFoundation.loadingPageSize,
        height: SizeFoundation.loadingPageSize,
        child: LoadingAtom(),
      ),
    );
  }
}
