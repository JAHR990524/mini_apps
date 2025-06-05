import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_mantenimiento/module_mantenimiento.dart';
import 'package:module_ventas/module_ventas.dart';
import 'core_app.dart';

void main() {
  runApp(
    ProviderScope(
      child: CoreApp(
        modules: [
          VentasModule(),
          MantenimientoModule(),
        ],
      ),
    ),
  );
}
