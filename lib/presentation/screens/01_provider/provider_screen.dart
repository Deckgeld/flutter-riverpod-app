import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';


//convertir a un widget de tipo ConsumerWidget
class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  //agregar el parametro ref
  Widget build(BuildContext context, WidgetRef ref) {

    //injectamos el provider
    final helloWorld = ref.watch( helloWorldProvider );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        //usamos el valor del provider
        child: Text( helloWorld ),
      ),
    );
  }
}