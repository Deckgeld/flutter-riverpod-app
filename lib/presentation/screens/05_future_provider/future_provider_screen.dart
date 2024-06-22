import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_app/presentation/providers/future_providers.dart';

import '../../providers/providers.dart';


class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
        child: pokemonName.when(
          data: (data) => Text(data), 
          error: (error, stack) => Text('Error: $error'),
          loading: () => const CircularProgressIndicator(),
        )
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            child: const Icon( Icons.arrow_forward_ios_rounded ),
            onPressed: () {   
              // ref.invalidate(pokemonNameProvider);
              ref.read(pokemonIdProvider.notifier).nextPokemon();
            },
          ),

          const SizedBox(height: 10),

          FloatingActionButton(
            heroTag: 'btn2',
            child: const Icon( Icons.arrow_back_ios_new_rounded ),
            onPressed: () {   
              // ref.invalidate(pokemonNameProvider);
              ref.read(pokemonIdProvider.notifier).previousPokemon();
            },
          ),
      ],)
    );
  }
}