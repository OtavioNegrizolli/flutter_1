import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Endereco do Contato"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.primary,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListTile(
              isThreeLine: true,
              title: const Text(
                "Endereco Atual",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Rua Dev, 1234",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "Piracicaba-SP",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    label: Text("Pesquisar..."),
                    contentPadding: EdgeInsets.all(0),
                  ),
                ),
              )),
          Expanded(
            child: Container(
              color: Colors.blue.withOpacity(.2),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        onPressed: () {},
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
