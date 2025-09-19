import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 255, 108, 235),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.deepPurple,
  brightness: Brightness.dark,
);

void main() {
  /* WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    fn,
  ) { */
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 14,
          ),
        ),
      ),
      // themeMode: ThemeMode.dark,
      home: Expenses(),
    ),
  );
  /* }); */
}
