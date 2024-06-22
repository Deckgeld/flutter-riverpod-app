// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'f3c084bc0e3ce5a17458c830d0c4dcc3a58db666';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = FutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = FutureProviderRef<String>;
String _$pokemonHash() => r'7f962cf2c53179aec9477cc31a44e42cd2a35ffa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemon].
@ProviderFor(pokemon)
const pokemonProvider = PokemonFamily();

/// See also [pokemon].
class PokemonFamily extends Family<AsyncValue<String>> {
  /// See also [pokemon].
  const PokemonFamily();

  /// See also [pokemon].
  PokemonProvider call(
    int pokemonid,
  ) {
    return PokemonProvider(
      pokemonid,
    );
  }

  @override
  PokemonProvider getProviderOverride(
    covariant PokemonProvider provider,
  ) {
    return call(
      provider.pokemonid,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonProvider';
}

/// See also [pokemon].
class PokemonProvider extends FutureProvider<String> {
  /// See also [pokemon].
  PokemonProvider(
    int pokemonid,
  ) : this._internal(
          (ref) => pokemon(
            ref as PokemonRef,
            pokemonid,
          ),
          from: pokemonProvider,
          name: r'pokemonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonHash,
          dependencies: PokemonFamily._dependencies,
          allTransitiveDependencies: PokemonFamily._allTransitiveDependencies,
          pokemonid: pokemonid,
        );

  PokemonProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonid,
  }) : super.internal();

  final int pokemonid;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonProvider._internal(
        (ref) => create(ref as PokemonRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonid: pokemonid,
      ),
    );
  }

  @override
  FutureProviderElement<String> createElement() {
    return _PokemonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonProvider && other.pokemonid == pokemonid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonid.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonRef on FutureProviderRef<String> {
  /// The parameter `pokemonid` of this provider.
  int get pokemonid;
}

class _PokemonProviderElement extends FutureProviderElement<String>
    with PokemonRef {
  _PokemonProviderElement(super.provider);

  @override
  int get pokemonid => (origin as PokemonProvider).pokemonid;
}

String _$pokemonIdHash() => r'cb3e9565cc8f40663ebd0ad3b61fc0514caf1149';

/// See also [PokemonId].
@ProviderFor(PokemonId)
final pokemonIdProvider = NotifierProvider<PokemonId, int>.internal(
  PokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PokemonId = Notifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
