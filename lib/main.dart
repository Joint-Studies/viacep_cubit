import 'package:flutter/material.dart';
import 'package:viacep_cubit/features/cep/presentation/pages/cep_screen.dart';
import 'di.dart' as di;

void main() async {
  await di.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CepScreen(),
    );
  }
}
