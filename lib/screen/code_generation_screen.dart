import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/layout/default_layout.dart';
import 'package:riverpod_example/riverpod/code_generation_provider.dart';

class CodeGenerationScreen extends ConsumerWidget {
  const CodeGenerationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state1 = ref.watch(gStateProvider);
    final state2 = ref.watch(gStateFutureProvider);
    final state3 = ref.watch(gStateFuture2Provider);

    return DefaultLayout(
      title: 'CodeGenerationScreen',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('State1 : $state1'),
          state2.when(
              data: (data) {
                return Text(
                  'State2 : $data',
                  textAlign: TextAlign.center,
                );
              },
              error: (err, stack) => Text(err.toString()),
              loading: () => const Center(child: CircularProgressIndicator())),
          state3.when(
              data: (data) {
                return Text(
                  'State3 : $data',
                  textAlign: TextAlign.center,
                );
              },
              error: (err, stack) => Text(err.toString()),
              loading: () => const Center(child: CircularProgressIndicator())),
        ],
      ),
    );
  }
}