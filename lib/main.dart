import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: OverflowExample(),
    );
  }
}

class OverflowExample extends StatelessWidget {
  const OverflowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: BodyExample(),
      ),
    );
  }
}

class BodyExample extends StatelessWidget {
  const BodyExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 100,
            width: 300,
          ),
          SelectableText.rich(
            TextSpan(
              text: 'Text very long',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
              children: <TextSpan>[
                TextSpan(
                  text:
                      ' that is going to overflow in 2 lines but doesnt behaves proerly',
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Text very long that is going to overflow in 2 lines but behaves properly!',
          ),
          const Text(
            'Text very long that is going to overflow in 2 lines but behaves properly!',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 30),
          Container(
            height: 1000,
            width: 300,
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ElevatedButton(
          child: Text('Open bottomsheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => ExampleBottomSheet(),
            );
          },
        ),
      ),
    );
  }
}

class ExampleBottomSheet extends StatelessWidget {
  const ExampleBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 60),
                Text(
                  'Example of text title in bottomsheet',
                  style: theme.textTheme.headline1?.copyWith(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Let everyone know you are ',
                  style: theme.textTheme.headline1?.copyWith(fontSize: 32),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  'Example of text subtitletitle in bottomsheet',
                  style: theme.textTheme.headline2?.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 42),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
