import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Categories',
      message: 'Phase 2: create user-specific credit/debit categories.',
    );
  }
}
