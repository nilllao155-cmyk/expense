import 'package:flutter/material.dart';

import '../../../core/navigation/app_drawer.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  AppModule _current = AppModule.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_current.label)),
      drawer: AppDrawer(
        current: _current,
        onChanged: (module) => setState(() => _current = module),
      ),
      body: AppDrawer.buildScreen(_current),
    );
  }
}
