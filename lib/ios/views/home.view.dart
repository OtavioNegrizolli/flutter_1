import 'package:flutter/cupertino.dart';

import 'package:contacts/ios/styles.dart';

import './details.view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: const Text("Meus Contatos"),
            trailing: CupertinoButton.filled(
              child: const Icon(CupertinoIcons.add),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const HomeView(),
                  ),
                );
              },
            ),
          ),
          SliverFillRemaining(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CupertinoTextField(
                    placeholder: "Pesquisar...",
                    onChanged: (value) {},
                  ),
                ),
                _contanctsList(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _contanctsList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            _contact(context),
          ],
        ),
      ),
    );
  }

  Widget _contact(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _leading,
        _content,
        _trailing(context),
      ],
    );
  }

  Widget get _leading {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color.fromARGB(255, 211, 211, 211),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: const Image(
          image: NetworkImage("https://picsum.photos/200"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget get _content {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "The name",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "(11) 99711-1154",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _trailing(BuildContext context) {
    return CupertinoButton(
      child: const Icon(
        CupertinoIcons.person,
        color: primaryColor,
      ),
      onPressed: () {
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => DetailsView()));
      },
    );
  }
}
