import 'package:flutter/material.dart';
import 'package:riverpod_example/screen/future_provider_screen.dart';
import 'package:riverpod_example/screen/state_notifier_provider_screen.dart';
import 'package:riverpod_example/screen/state_provider_screen.dart';

import '../layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: 'HomeScreen',
        body: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const StateProviderScreen()));
                },
                child: const Text('StateProviderScreen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const StateNotifierProviderScreen()));
                },
                child: const Text('StateNotifierProviderScreen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const FutureProviderScreen()));
                },
                child: const Text('FutureProviderScreen'))
          ],
        ));
  }
}
