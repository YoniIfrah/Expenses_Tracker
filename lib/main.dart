import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorsScheme = ColorScheme.fromSeed(seedColor: Colors.purple.shade50);
var kDarkColorsScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark, seedColor: Colors.purple.shade900);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // default
      darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorsScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kDarkColorsScheme.onPrimary,
            foregroundColor: kDarkColorsScheme.onPrimaryContainer,
          )),
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorsScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorsScheme.onPrimary,
            foregroundColor: kColorsScheme.onPrimaryContainer,
          )),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    );
  }
}
