import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/riverpod/provider_observer.dart';
import 'package:riverpod_example/screen/home_screen.dart';

void main() {
  runApp(ProviderScope(observers: [
    Logger(),
  ], child: const MaterialApp(home: HomeScreen())));
}
