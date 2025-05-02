import 'package:go_router/go_router.dart';

/// Interfaz unificada para los módulos de la SuperApp
abstract class AppModule {
  String get name;
  String get path;
  List<GoRoute> get routes;
}
