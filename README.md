# Expense Manager (Flutter + Supabase)

Phase 1 scaffold completed:
- Modular folder structure
- Theme setup
- Drawer-based module navigation
- Dashboard UI shell
- Placeholder Supabase bootstrap

## Run configuration
Set Supabase keys with `--dart-define` once available:

```bash
flutter run \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

## Planned phases
1. Foundation (current)
2. Auth + Categories
3. Transactions + balance updates
4. Reports
5. Loans and Assets
6. Settings and production hardening
