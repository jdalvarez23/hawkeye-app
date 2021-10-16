import 'package:flutter/material.dart';
import 'package:hawkeye/components/reusable_card.dart';
import 'package:hawkeye/screens/hero_image_screen.dart';
import 'package:hawkeye/screens/video_screen.dart';
import 'package:hawkeye/theme.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> imageList = [
    'https://via.placeholder.com/100',
    'https://via.placeholder.com/150'
  ];

  List<String> videoList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                margin: EdgeInsets.only(left: 15, right: 15),
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
                              foregroundColor: MaterialStateProperty.all(themePrimaryColor),
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).cardColor),
                              elevation: MaterialStateProperty.all(1)
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
                            elevation: MaterialStateProperty.all(1)
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
                            elevation: MaterialStateProperty.all(1)
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
              // photos
              Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                        color: Colors.white,
                        height: 150,
                        cardChild: Column(
                          children: [
                            ListTile(
                              title: Text('Photos', style: TextStyle(color: Colors.grey),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 75,
                              margin: EdgeInsets.only(left: 15, right: 15),
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: imageList.length,
                                separatorBuilder: (BuildContext context, int index) {
                                  return SizedBox(width: 10);
                                },
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    onTap: () {
                                      openHeroImage(context, Image.network(imageList[index]).image, index);
                                    },
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      child: Hero(
                                        tag: "photoImage" + index.toString(),
                                        child: FittedBox(
                                          fit: BoxFit.fill,
                                          child: Image.network(imageList[index], loadingBuilder: (_, child, chunk) =>
                                          chunk != null ? const Text("loading") : child,),
                                        ),
                                      )
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        )
                      )),
                ],
              ),
              // videos
              Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          color: Colors.white,
                          height: 150,
                          margin: EdgeInsets.only(left: 15, right: 15),
                          cardChild: Column(
                            children: [
                              ListTile(
                                title: Text('Videos', style: TextStyle(color: Colors.grey),),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 75,
                                margin: EdgeInsets.only(left: 15, right: 15),
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: videoList.length,
                                  separatorBuilder: (BuildContext context, int index) {
                                    return SizedBox(width: 10);
                                  },
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(
                                      height: 100,
                                      width: 100,
                                      child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => VideoScreen(index: index, imageUrl: imageList[index],)
                                                )
                                            );
                                          },
                                          child: FittedBox(
                                            fit: BoxFit.fill,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: NetworkImage(imageList[index]),
                                                          fit: BoxFit.cover,
                                                          colorFilter: ColorFilter.mode(
                                                              Colors.black.withOpacity(1.0),
                                                              BlendMode.softLight
                                                          )
                                                      )
                                                  ),
                                                ),
                                                Icon(Icons.play_arrow, size: 50, color: Colors.white, ),
                                              ],
                                            ),
                                          )
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          )
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
