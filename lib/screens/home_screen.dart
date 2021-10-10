import 'package:flutter/material.dart';
import 'package:hawkeye/components/reusable_card.dart';
import 'package:hawkeye/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // alarm status card
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        color: Colors.white,
                        cardChild: Container(
                          child: Row(
                            // center row contents vertically
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // center row contents horizontally
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 12.5,
                                height: 12.5,
                                decoration: BoxDecoration(
                                    color: Colors.green, shape: BoxShape.circle),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'SYSTEM',
                                    style: TextStyle(
                                      color: Colors.grey
                                    ),
                                  ),
                                  Text(
                                    'Disarmed',
                                    style: TextStyle(fontSize: 24),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                )),
              ],
            ),
            // action buttons
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              height: 75,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 115,
                    child: TextButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).cardColor),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.lock_open), Text('DISARM')],
                        )
                    ),
                  ),
                  Container(
                    width: 115,
                    child: TextButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(themeYellow),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).cardColor),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.lock_outline), Text('ARM (STAY)')],
                        )
                    ),
                  ),
                  Container(
                    width: 115,
                    child: TextButton(
                        onPressed: () => {},
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.red),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).cardColor),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.lock_outline), Text('ARM (AWAY)')],
                        )
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
