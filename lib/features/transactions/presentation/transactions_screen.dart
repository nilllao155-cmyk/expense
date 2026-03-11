import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Transactions',
      message: 'Phase 3: add transactions with category dropdown filtering by type.',
    );
  }
}
