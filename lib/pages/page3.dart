import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Page 3'),),
      body: Center(
        child: ElevatedButton(onPressed: (){

        }, child: const Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}