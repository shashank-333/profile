import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
              expandedHeight: 400.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/contact_image.jpg",
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30.0),
              SansBold("Contact me", 40.0),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                        containerWidth: 350.0,
                        text: "First Name",
                        hintText: "Please type your first name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                          text: "Email",
                          containerWidth: 350.0,
                          hintText: "Please enter your email address"),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                          text: "Last name",
                          containerWidth: 350.0,
                          hintText: "Please type your last name"),
                      SizedBox(height: 15.0),
                      TextForm(
                          text: "Phone Number",
                          containerWidth: 350.0,
                          hintText: "please type your phone number"),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15.0),
              TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hintText: "Please type your message",
                  maxLine: 10.0),
              SizedBox(height: 20.0),
              MaterialButton(
                elevation: 60.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
                onPressed: () {},
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
