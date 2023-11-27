import 'package:flutter/material.dart';

class EdamanPage extends StatefulWidget {
  const EdamanPage({super.key});

  @override
  State<EdamanPage> createState() => _EdamanPageState();
}

class _EdamanPageState extends State<EdamanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
