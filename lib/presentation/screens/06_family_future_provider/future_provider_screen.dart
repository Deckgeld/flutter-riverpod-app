import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

//stateful widget se convierte en un ConsumerStatefulWidget, en lugar de un ConsumerWidget
class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  //FamilyFutureScreenState se convierte en FamilyFutureScreenState y eliminamos los guiones bajos
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

// State se convierte en ConsumerState
class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 4;

  @override
  Widget build(BuildContext context) {
    final pokemonAsync = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon id: $pokemonId'),
        ),
        body: Center(
          child: pokemonAsync.when(
            data: (pokemon) => Text(pokemon), 
            error: (error, stack) => Text('Error: $error'),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              child: const Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () {
                if (pokemonId <= 1) return;

                pokemonId--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              heroTag: 'btn2',
              child: const Icon(Icons.arrow_forward_ios_rounded),
              onPressed: () {
                pokemonId++;
                setState(() {});
              },
            ),
          ],
        ));
  }
}
