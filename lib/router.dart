import 'package:mini_apps/core_app.dart';
import 'package:shared/app_module.dart';
import 'package:shared/dependencies.dart';

/// Construye el router combinando rutas base y de módulos
GoRouter buildRouter(List<AppModule> modules) {
  // Ruta inicial que carga la HomeScreen con los módulos disponibles
  final baseRoutes = [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(modules: modules),
    ),
  ];

  // Obtener todas las rutas definidas por cada módulo
  final moduleRoutes = modules.expand((m) => m.routes);

  return GoRouter(
    initialLocation: '/',
    routes: [
      ...baseRoutes,
      ...moduleRoutes,
    ],
  );
}
