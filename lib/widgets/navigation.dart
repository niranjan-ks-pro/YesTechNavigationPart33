import 'package:flutter/material.dart';
import '../screens/About.dart';
import '../screens/product.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //app bar
        appBar: AppBar(
          //text
          title: const Text("Navigation"),
          centerTitle: true,
          //BG colour
          backgroundColor: const Color.fromARGB(255, 8, 153, 27),

          //leading
          leading: const Icon(Icons.home),
          //Actions
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],

          //elevation
          elevation: 30,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const productscreen()));
                  },
                  child: const Text('product page')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Aboutscreen()));
                  },
                  child: const Text('About page'))
            ],
          ),
        ));
  }
}
