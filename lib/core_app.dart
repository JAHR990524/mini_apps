import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:shared/app_module.dart';
import 'package:shared/dependencies.dart';
import 'router.dart';

class CoreApp extends ConsumerWidget {
  final List<AppModule> modules;
  const CoreApp({required this.modules, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = buildRouter(modules);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Super App',
      routerConfig: router,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

/// HomeScreen ahora recibe la lista de módulos y construye botones dinámicos
class HomeScreen extends ConsumerWidget {
  final List<AppModule> modules;
  const HomeScreen({required this.modules, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Super App Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: modules.map((mod) {
            return ElevatedButton(
              onPressed: () => context.go(mod.path),
              child: Text('Ir a ${mod.name}'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
