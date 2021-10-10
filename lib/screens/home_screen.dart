import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Card(
                child: InkWell(
                  child: Center(
                    child: const SizedBox(
                      width: 300,
                      height: 100,
                      child: Text('A card that can be tapped', style: TextStyle(fontSize: 24),),
                    ),
                  )
                ),
              ))
            ],
          )
        ],
      )
    );
  }
}