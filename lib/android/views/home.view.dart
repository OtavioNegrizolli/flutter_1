import 'package:contacts/android/views/edit.view.dart';
import 'package:flutter/material.dart';

import './details.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).primaryColor,
        title: const Text("Meus Contatos"),
        leading: IconButton(
          icon: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: _onSearchPressed,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: const Color.fromARGB(255, 211, 211, 211),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image(
                  image: const NetworkImage("https://picsum.photos/200"),
                  errorBuilder: _onImageLoaderror,
                  fit: BoxFit.contain,
                ),
              ),
              //,
            ),
            title: const Text("Nome"),
            subtitle: const Text("(18) 99798-9544"),
            trailing: IconButton(
              icon: Icon(
                Icons.chat,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsView(),
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditView(),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }

  Widget _onImageLoaderror(
    BuildContext context,
    Object error,
    StackTrace? stack,
  ) {
    return const Icon(
      Icons.person,
      color: Color.fromARGB(255, 129, 129, 129),
    );
  }

  void _onSearchPressed() {}
}
