import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components.dart';

class BlogWeb extends StatefulWidget {
  const BlogWeb({Key? key}) : super(key: key);

  @override
  State<BlogWeb> createState() => _BlogWebState();
}

class _BlogWebState extends State<BlogWeb> {
  void article() async {
    await FirebaseFirestore.instance
        .collection("articles")
        .get()
        .then((querySnapshot) {
      querySnapshot.docs.reversed.forEach((element) {
        print(element.data()['title']);
      });
    });
  }

  @override
  void initState() {
    article();
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 25.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/blog.jpg",
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
          body: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection('articles').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        DocumentSnapshot documentSnapshot =
                            snapshot.data!.docs[index];

                        return BlogPost(
                            title: documentSnapshot["title"],
                            body: documentSnapshot["body"]);
                      });
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }),
        ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  final title;
  final body;
  const BlogPost({Key? key, @required this.title, @required this.body})
      : super(key: key);

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 40.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            border: Border.all(
          style: BorderStyle.solid,
          width: 1.0,
          color: Colors.black,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbelCustom(
                      text: widget.title.toString(),
                      size: 25.0,
                      color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle_outlined),
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 7.0),
            Text(
              widget.body.toString(),
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
