import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

//keep alive es para que no se destruya el estado cuando se sale de la pantalla
@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int  build() => 5;

  void incrementByOne() {
    state++;
  }
}

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkModel() {
    state = !state;
  }
}

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => 'Melissa Flores';

  void changeName( String name) {
    state = name;
  }
}