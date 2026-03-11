import 'package:flutter/material.dart';

import '../../../shared/widgets/module_placeholder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ModulePlaceholder(
      title: 'Settings',
      message: 'Phase 6: app preferences and account controls.',
    );
  }
}
