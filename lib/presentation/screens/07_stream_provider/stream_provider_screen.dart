import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/providers/providers.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersInChatAsync = ref.watch(userInChatProvider);

    return usersInChatAsync.when(
      data: (data) {
        final users = usersInChatAsync.value!;

        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];

            return ListTile(
              title: Text(user),
            );
          },
        );
      }, 

      error: (error, stackTrace) {
        return Center(
          child: Text('Error: $error'),
        );
      }, 
      
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}
