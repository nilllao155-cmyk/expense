import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class LoansScreen extends StatelessWidget {
  const LoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Loans / Liabilities',
      message: 'Phase 5: manage borrowed/lent records and due tracking.',
    );
  }
}
