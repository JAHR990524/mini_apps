import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared/app_module.dart';
import 'ventas_page.dart';

class VentasModule implements AppModule {
  @override
  String get name => 'Ventas';
  @override
  String get path => '/ventas';
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: path,
          builder: (ctx, st) => ProviderScope(child: VentasPage()),
        )
      ];
}
