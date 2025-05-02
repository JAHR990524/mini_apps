import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ventasProvider = StateProvider<int>((_) => 0);

class VentasPage extends ConsumerWidget {
  const VentasPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Módulo Ventas')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ventas Module'),
            ElevatedButton(
              onPressed: () => print('venta'),
              child: Text('Agregar venta'),
            ),
          ],
        ),
      ),
    );
  }
}
