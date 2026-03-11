import 'package:flutter/material.dart';

import '../../features/assets/presentation/assets_screen.dart';
import '../../features/categories/presentation/categories_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/loans/presentation/loans_screen.dart';
import '../../features/reports/presentation/reports_screen.dart';
import '../../features/settings/presentation/settings_screen.dart';
import '../../features/transactions/presentation/transactions_screen.dart';

enum AppModule {
  home('Dashboard', Icons.dashboard_outlined),
  categories('Categories', Icons.category_outlined),
  transactions('Transactions', Icons.swap_horiz_outlined),
  reports('Reports', Icons.assessment_outlined),
  loans('Loans / Liabilities', Icons.account_balance_wallet_outlined),
  assets('Assets', Icons.savings_outlined),
  settings('Settings', Icons.settings_outlined);

  const AppModule(this.label, this.icon);
  final String label;
  final IconData icon;
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    required this.current,
    required this.onChanged,
  });

  final AppModule current;
  final ValueChanged<AppModule> onChanged;

  static Widget buildScreen(AppModule module) {
    switch (module) {
      case AppModule.home:
        return const HomeScreen();
      case AppModule.categories:
        return const CategoriesScreen();
      case AppModule.transactions:
        return const TransactionsScreen();
      case AppModule.reports:
        return const ReportsScreen();
      case AppModule.loans:
        return const LoansScreen();
      case AppModule.assets:
        return const AssetsScreen();
      case AppModule.settings:
        return const SettingsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Expense Manager',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: const Text('Phase 1 Navigation'),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                children: AppModule.values
                    .map(
                      (module) => ListTile(
                        leading: Icon(module.icon),
                        title: Text(module.label),
                        selected: module == current,
                        onTap: () {
                          Navigator.of(context).pop();
                          onChanged(module);
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
