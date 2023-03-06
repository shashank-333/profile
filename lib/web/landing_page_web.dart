import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:shash/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  var logger = Logger();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 25,
          color: Colors.black,
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
      ),
      body: ListView(
        children: <Widget>[
          //First section
          Container(
            height: heightDevice - 56.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SizedBox(height: 15.0),
                    SansBold("SHASHANK", 55.0),
                    SansBold("Flutter Developer", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("blshashank59@gmail.com", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("+91 9353216323", 15.0)
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("Channasandra,Bengaluru - 560098", 15.0)
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage('assets/profile-modified.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Secand section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                height: 500.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/web.jpg", height: widthDevice / 1.9),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SansBold("About me", 40.0),
                        SizedBox(height: 15.0),
                        Sans(
                            "Hello! I'm Shashank I learning a flutter development",
                            15.0),
                        Sans(
                            "I strive to ensure astounding performance with state of ",
                            15.0),
                        Sans(
                            "the art securuty for Android, IOS , WEB, Mac, Linux and Windows",
                            15.0),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Flutter", 15.0),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Firebase", 15.0),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Android", 15.0),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("IOS", 15.0),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.tealAccent,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              padding: EdgeInsets.all(7.0),
                              child: Sans("Windows", 15.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
          ),
          //Third section
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What I do?", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCard(
                      imagePath: "assets/webl.png",
                      text: "Web development",
                    ),
                    AnimatedCard(
                      imagePath: "assets/app.png",
                      text: "App development",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCard(
                      imagePath: "assets/firebase.png",
                      text: "Back-end development",
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Fourth section
          Container(
            height: heightDevice,
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SansBold("Contact me", 40.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextForm(
                            containerWidth: 350.0,
                            text: "First Name",
                            hintText: "Please type your first name",
                            controller: _firstNameController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "First name is required";
                              }
                            },
                          ),
                          SizedBox(height: 15.0),
                          TextForm(
                            text: "Email",
                            containerWidth: 350.0,
                            hintText: "Please enter your email address",
                            controller: _emailController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "Email is required";
                              }
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          TextForm(
                            text: "Last name",
                            containerWidth: 350.0,
                            hintText: "Please type your last name",
                            controller: _lastNameController,
                          ),
                          SizedBox(height: 15.0),
                          TextForm(
                            text: "Phone Number",
                            containerWidth: 350.0,
                            hintText: "please type your phone number",
                            controller: _phoneController,
                            validator: (text) {
                              if (text.toString().isEmpty) {
                                return "Phone number is required";
                              }
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  TextForm(
                    text: "Message",
                    containerWidth: widthDevice / 1.5,
                    hintText: "Please type your message",
                    maxLine: 10.0,
                    controller: _messageController,
                  ),
                  MaterialButton(
                    elevation: 60.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0),
                    onPressed: () {
                      logger.d(_firstNameController.text);
                      formKey.currentState!.validate();
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
