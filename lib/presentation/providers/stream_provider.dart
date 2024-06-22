import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';

part 'stream_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<List<String>> userInChat(UserInChatRef ref) async* {
  final names = <String>[];
  //yield es para devolver un valor y continuar la ejecución del método
  // yield names;

  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }

  yield [];
}
