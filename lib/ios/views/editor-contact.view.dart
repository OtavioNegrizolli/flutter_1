import 'package:contacts/models/contact.model.dart';
import 'package:flutter/cupertino.dart';

class EditorContatcView extends StatelessWidget {
  final ContactModel? contact;
  const EditorContatcView({super.key, this.contact});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          _navbar,
          _body,
        ],
      ),
    );
  }

  Widget get _navbar {
    return CupertinoSliverNavigationBar(
      largeTitle: Text("${contact == null ? "Novo" : "Editar"} Contato"),
    );
  }

  Widget get _body {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
            child: Column(
          children: <Widget>[
            CupertinoTextField(
              placeholder: contact?.name ?? "Name",
            ),
            const SizedBox(height: 20),
            CupertinoTextField(
              placeholder: contact?.phone ?? "Telefone",
            ),
            const SizedBox(height: 20),
            CupertinoTextField(
              placeholder: contact?.email ?? "E-mail",
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton.filled(
                child: Row(
                  children: const <Widget>[
                    Icon(CupertinoIcons.floppy_disk),
                    Text("Salvar"),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
        )),
      ),
    );
  }
}
