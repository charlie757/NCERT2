import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ncert5/HomePage%20Widget/MyDrawer.dart';
import 'package:ncert5/ThemeWidget/ChangeThemeButton.dart';
import 'package:ncert5/Widget2/AllClassesVideo.dart';
import 'package:ncert5/Widget2/CBSEPaper.dart';
import 'package:ncert5/Widget2/NCERT%20BookPage.dart';
import 'package:ncert5/Widget2/NCERT%20Important%20Quetion.dart';
import 'package:ncert5/Widget2/NCERT%20ImportantMCQ.dart';
import 'package:ncert5/Widget2/NCERT%20Notes.dart';
import 'package:ncert5/Widget2/NCERT%20Solution%20Page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // Used the Animation Controller
  Animation animation, delayedAnimation, muchdelayedAnimation, childAnimation;
  AnimationController animationController;

  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    super.initState();

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    muchdelayedAnimation = Tween(begin: -1, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("NCERT"),
              actions: [
                IconButton(icon: Icon(Icons.share), onPressed: () {}),
                ChangeThemeButtonWidget(),
              ],
            ),
            drawer: MyDrawer(),
            body: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                myTransform(width, context, NCERTBookPage()),
                myTransform(width, context, NCERTSolutionPage()),
                // Transform(
                //     transform: Matrix4.translationValues(
                //         animation.value * width, 0.0, 0.0),
                //     child: InkWell(
                //         onTap: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) => NCERTSolutionPage()));
                //         },
                //         child:
                //             Cards('assets/images/bulb.png', 'NCERT Solution'))),
                Transform(
                    transform: Matrix4.translationValues(
                        delayedAnimation.value * width, 0.0, 0.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NCERTNotes()));
                        },
                        child:
                            Cards('assets/images/book2.jpg', 'NCERT Notes'))),
                Transform(
                    transform: Matrix4.translationValues(
                        delayedAnimation.value * width, 0.0, 0.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      NCERTImportantQuestion()));
                        },
                        child: Cards('assets/images/info.png',
                            'NCERT Important Question'))),
                Transform(
                    transform: Matrix4.translationValues(
                        muchdelayedAnimation.value * width, 0.0, 0.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllClassesVideo()));
                        },
                        child: Cards(
                            'assets/images/video.jpg', 'All Classes Video'))),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NCERTMCQ()));
                    },
                    child:
                        Cards('assets/images/NSO.jpg', 'NCERT Important MCQ')),
                Transform(
                    transform: Matrix4.translationValues(
                        muchdelayedAnimation.value * width, 0.0, 0.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CBSEPaper()));
                        },
                        child:
                            Cards('assets/images/previous.jpg', 'CBSE Paper')))
              ],
            ),
          );
        });
  }

  Transform myTransform(double width, BuildContext context, route) {
    return Transform(
        transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
        child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => route));
            },
            child: Cards('assets/images/book4.jpg', 'NCERT Books')));
  }

  Widget Cards(String img, String name) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            img,
            width: 80,
            height: 60,
          ),
          Text(name),
        ],
      ),
    );
  }
}
