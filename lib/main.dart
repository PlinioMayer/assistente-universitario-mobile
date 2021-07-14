import 'package:flutter/material.dart';
import 'src/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assistente Universitário',
      home: AppRouter(),
    );
  }
}
