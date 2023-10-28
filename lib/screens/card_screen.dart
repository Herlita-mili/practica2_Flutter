import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Card Screen'),
        // elevation: 0,
      ),
      body: const Center(
        child: Text('CardScreen'),
      ),
    );
  }
}