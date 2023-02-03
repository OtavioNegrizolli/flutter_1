import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  final ContactModel? model;
  const EditView({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(model == null ? "Novo Contato!" : "Editar Contato"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                initialValue: model?.name,
                onSaved: (value) {
                  model!.name = value ?? "";
                },
              ),
              TextFormField(
                initialValue: model?.phone,
                onSaved: (value) {
                  model!.phone = value ?? "";
                },
              ),
              TextFormField(
                initialValue: model?.name,
                onSaved: (value) {
                  model!.name = value ?? "";
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                ),
                child: TextButton.icon(
                  icon: Icon(
                    Icons.save,
                    color: colorScheme.onPrimary,
                  ),
                  label: Text(
                    "Salvar",
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
