import 'package:flutter/material.dart';

import '../components.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({Key? key}) : super(key: key);

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/profile-modified.png"),
              ),
            ),
            SizedBox(height: 15.0),
            SansBold("Shashank", 30.0),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLancher(
                    imgPath: "assets/instagram2.svg",
                    url: "https://www.instagram.com/tomcruise/"),
                urlLancher(
                    imgPath: "assets/twitter.svg",
                    url: "https://www.twitter.com/tomcruise"),
                urlLancher(
                    imgPath: "assets/github.svg",
                    url: "https://www.github.com/paulinaknop"),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/works.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "Home", route: '/'),
                  Spacer(),
                  TabsWeb(title: "Works", route: '/works'),
                  Spacer(),
                  TabsWeb(title: "Blog", route: '/blog'),
                  Spacer(),
                  TabsWeb(title: "About", route: '/about'),
                  Spacer(),
                  TabsWeb(title: "Contact", route: '/contact'),
                  Spacer(),
                ],
              ),
            )
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 30.0),
                SansBold("Works", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                        imagePath: "assets/Project_screenshot.png",
                        height: 200.0,
                        width: 300.0),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          SansBold("Portfolio", 30.0),
                          SizedBox(height: 15.0),
                          Sans(
                              "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                              15.0),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          SansBold("Portfolio", 30.0),
                          SizedBox(height: 15.0),
                          Sans(
                              "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                              15.0),
                        ],
                      ),
                    ),
                    AnimatedCard(
                        imagePath: "assets/Project_screenshot.png",
                        height: 200.0,
                        width: 300.0,
                        reverse: true),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                        imagePath: "assets/Project_screenshot.png",
                        height: 200.0,
                        width: 300.0),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: [
                          SansBold("Portfolio", 30.0),
                          SizedBox(height: 15.0),
                          Sans(
                              "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                              15.0),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
              ],
            )
          ],
        ),
      ),
    );
  }
}
