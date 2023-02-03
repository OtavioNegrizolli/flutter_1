import 'package:contacts/android/views/address.view.dart';
import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

import './edit.view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Text("Contato"),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(
                image: const NetworkImage("https://picsum.photos/200"),
                errorBuilder: _onImageLoaderror,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          const Text(
            "Otávio",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "(18) 99797-9797",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            "otavio@email.com",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context).primaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.phone,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context).primaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.email,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Theme.of(context).primaryColor,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_enhance,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            isThreeLine: true,
            title: const Text(
              "Endereço",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Rua 1, 15",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "Pindamonhagaba/SP",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddressView(),
                  ),
                );
              },
              icon: Icon(
                Icons.pin_drop_outlined,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditView(
                model: ContactModel(
                  id: "1",
                  name: "Nome",
                  phone: "18997464445",
                ),
              ),
            ),
          );
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.edit),
      ),
    );
  }

  Widget _onImageLoaderror(
    BuildContext context,
    Object error,
    StackTrace? stack,
  ) {
    return Icon(
      Icons.person,
      size: 150,
      color: Theme.of(context).primaryColor.withOpacity(0.4),
    );
  }
}
