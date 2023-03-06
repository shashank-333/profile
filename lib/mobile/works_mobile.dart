import 'package:flutter/material.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({Key? key}) : super(key: key);

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black),
                  ),
                  child: Image.asset("assets/profile-modified.png",
                      filterQuality: FilterQuality.high),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 20.0),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/works.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  SansBold("Works", 35.0),
                  SizedBox(height: 20.0),
                  AnimatedCard(
                    imagePath: "assets/Project_screenshot.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Portfolio", 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                        15.0),
                  ),
                  AnimatedCard(
                    imagePath: "assets/Project_screenshot.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                    reverse: true,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Portfolio", 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                        15.0),
                  ),
                  AnimatedCard(
                    imagePath: "assets/Project_screenshot.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Portfolio", 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                        "Deployed on Android, IOS and Web, The portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for back-end.",
                        15.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
