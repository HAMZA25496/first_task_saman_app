import 'package:first_task_samaan_app/presentation/screens/add_order_2.dart';
import 'package:flutter/material.dart';

import 'components/textfield.dart';
import 'presentation/screens/add_order_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Jameel Noori Nastaleeq'),

        home: const SafeArea(
      child: Scaffold(body: AddOrder1()),
        ),
      );

  }
}
