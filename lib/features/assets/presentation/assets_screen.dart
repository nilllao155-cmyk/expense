import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class AssetsScreen extends StatelessWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Assets',
      message: 'Phase 5: track personal assets and valuations.',
    );
  }
}
