import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/screen/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: HomeScreen())));
}
