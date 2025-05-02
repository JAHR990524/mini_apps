import 'package:flutter/material.dart';
import 'package:shared/dependencies.dart';

final ventasProvider = StateProvider<int>((_) => 0);

class VentasPage extends ConsumerWidget {
  const VentasPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(ventasProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Módulo Ventas')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Ventas Module $count'),
            ElevatedButton(
              onPressed: () {
                ref.read(ventasProvider.notifier).state++;
                context.go('/');
              },
              child: Text('Agregar venta'),
            ),
          ],
        ),
      ),
    );
  }
}
