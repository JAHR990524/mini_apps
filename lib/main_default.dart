import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core_app.dart';

void main() {
  runApp(
    ProviderScope(
      child: CoreApp(
        modules: [],
      ),
    ),
  );
}
