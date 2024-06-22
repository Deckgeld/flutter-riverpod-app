import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
FutureOr<String> pokemonName(PokemonNameRef ref) async {
  final pokemonid = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonid);

  // ref.onDispose(() => print('Disposing PokemonNameProvider'));

  return pokemonName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1; 

  void nextPokemon() {
    state = state + 1;
  }

  void previousPokemon() {
    if (state > 1) state = state - 1;
  }
}

@Riverpod(keepAlive: true)
Future<String> pokemon(PokemonRef ref, int pokemonid) async{
  final pokemonName = await PokemonInformation.getPokemonName(pokemonid);
  return pokemonName;
}