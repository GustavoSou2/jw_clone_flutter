import 'package:flutter/material.dart';
import 'package:jw_test_v1/router_outlet.dart';
import 'package:jw_test_v1/ui/home_ui.dart';
import 'package:intl/date_symbol_data_local.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_BR');

    return MaterialApp(
      title: 'JW Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RouterOutlet(),
    );
  }
}
