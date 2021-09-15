import 'package:flutter/material.dart';
import 'package:riverpod_example/Pages/main_page.dart';

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;
  const SplashPage({Key key, @required this.onInitializationComplete});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2))
        .then((_) => widget.onInitializationComplete());
  }

  @override
  Widget build(BuildContext context) {
    print("splash called");
    return MaterialApp(
        title: 'Flickd',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Center(
              child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/images/logo.png'),
                    ), // Decoration Image
                  ))),
        )); // BoxDecoration

// Container);
  }
}
