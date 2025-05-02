import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:module_mantenimiento/mantenimiento_page.dart';
import 'package:shared/app_module.dart';

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
