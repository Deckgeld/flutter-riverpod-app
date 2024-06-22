import 'package:riverpod_annotation/riverpod_annotation.dart';
//Es normal que no exista, si guardamos el archivo, el generador lo crear
part 'hello_world_provider.g.dart';


//ref tambien lo crea el generador
@riverpod
String helloWorld( HelloWorldRef ref ) => 'Hello World!';   