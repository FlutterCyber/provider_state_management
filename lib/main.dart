import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/pages/counter_page.dart';
import 'package:provider_state_management/pages/data_page.dart';
import 'package:provider_state_management/pages/home_page.dart';
import 'package:provider_state_management/providers/counter_provider.dart';
import 'package:provider_state_management/providers/name_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => NameProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage(),
        routes: {
          HomePage.id: (context) => HomePage(),
          DataPage.id: (context) => DataPage(),
          CounterPage.id: (context) => CounterPage(),
        },
      ),
    );
  }
}
