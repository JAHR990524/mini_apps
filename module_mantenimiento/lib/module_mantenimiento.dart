import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_mantenimiento/mantenimiento_page.dart';
import 'package:shared/app_module.dart';
import 'package:shared/dependencies.dart';

class MantenimientoModule implements AppModule {
  @override
  String get name => 'Mantenimiento';
  @override
  String get path => '/mantenimiento';
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: path,
          builder: (ctx, st) => ProviderScope(child: MantenimientoPage()),
        )
      ];
}
