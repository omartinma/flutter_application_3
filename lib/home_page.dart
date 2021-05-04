import 'package:flutter/material.dart';
import 'package:flutter_application_3/example_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ElevatedButton(
          child: Text('Open dialog'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: false,
              backgroundColor: Colors.transparent,
              builder: (context) => ExampleBottomSheet(),
            );
          },
        ),
      ),
    );
  }
}
