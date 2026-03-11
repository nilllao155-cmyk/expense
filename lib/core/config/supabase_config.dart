import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  static const _supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://YOUR_PROJECT.supabase.co',
  );

  static const _supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: 'YOUR_SUPABASE_ANON_KEY',
  );

  static Future<void> initialize() async {
    if (_supabaseUrl.contains('YOUR_PROJECT') ||
        _supabaseAnonKey.contains('YOUR_SUPABASE_ANON_KEY')) {
      return;
    }

    await Supabase.initialize(
      url: _supabaseUrl,
      anonKey: _supabaseAnonKey,
    );
  }
}
