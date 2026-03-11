import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Reports',
      message: 'Phase 4: monthly summaries and breakdowns.',
    );
  }
}
