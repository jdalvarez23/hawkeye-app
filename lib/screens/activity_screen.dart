import 'package:flutter/material.dart';
import 'package:hawkeye/components/reusable_card.dart';
import 'package:hawkeye/theme.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Activity'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: ListTile(
                title: Text("Message"),
                subtitle: Text("DateTime"),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ));
  }
}
