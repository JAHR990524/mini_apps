import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core_app.dart';
import 'package:module_ventas/module_ventas.dart';

void main() {
  runApp(
    ProviderScope(
      child: CoreApp(
        modules: [VentasModule()],
      ),
    ),
  );
}
