import 'package:contacts/ios/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:contacts/ios/views/home.view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          _navbar(context),
          _body,
        ],
      ),
    );
  }

  Widget _navbar(BuildContext context) {
    return CupertinoSliverNavigationBar(
      largeTitle: const Text("Contato"),
      trailing: CupertinoButton.filled(
        child: const Icon(CupertinoIcons.pen),
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => const HomeView(),
            ),
          );
        },
      ),
    );
  }

  Widget get _body {
    return SliverFillRemaining(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          _contactImage,
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
          ),
          _actions,
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                _addressInfo,
                CupertinoButton(
                  child: const Icon(CupertinoIcons.location),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _contactImage {
    return Container(
      width: 200,
      height: 200,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: primaryColor.withOpacity(.2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image(
          image: const NetworkImage("https://picsum.photos/200"),
          errorBuilder: _onImageLoadError,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget get _actions {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.phone,
          ),
          onPressed: () {},
        ),
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.mail,
          ),
          onPressed: () {},
        ),
        CupertinoButton(
          child: const Icon(
            CupertinoIcons.photo_camera,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget get _addressInfo {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          SizedBox(width: double.infinity),
          Text(
            "Endereco",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Text(
            "Rua Dev, 123",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Text(
            "Presindente Prudente-SP",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _onImageLoadError(
    BuildContext context,
    Object error,
    StackTrace? stackTrace,
  ) {
    return const Icon(CupertinoIcons.person);
  }
}
