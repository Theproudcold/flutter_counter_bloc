import 'package:flutter/material.dart';
import 'package:flutter_counter/about/about.dart';
import 'package:flutter_counter/counter/counter.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  CounterApp({super.key})
      : super(
            home: const CounterPage(),
            routes: {"/about": (context) => const AboutPage(),
            "/home": (context) => const CounterPage()});
}
