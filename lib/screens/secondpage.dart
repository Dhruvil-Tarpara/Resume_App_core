import 'package:flutter/material.dart';
import 'package:resume_builder/methos.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    TextStyle mystyle = TextStyle(
        color: Globals.mycolor, fontSize: 16, fontWeight: FontWeight.w500);
    Icon myicon = Icon(
      Icons.arrow_forward_ios_rounded,
      size: 16,
      color: Globals.mycolor,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2d405e),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Resume Workspace",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xff2d405e),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(100),
                  ),
                ),
                child: Text(
                  "Build Options",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                //padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context,"contactpage");
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/contact-info.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Contact info", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context,"carrierpage");
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/objects.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Carrier Objective", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context,"personalpage");
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/users.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Personal Details", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context,"educationpage");
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.lime.shade600,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/edu.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Eduction", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context,'experincepage');
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/experienc.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Experiences", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context, 'technicalpage');
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/skill.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Technical Skills", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/hobbies.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Hobbies", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade900,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/project.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Projects", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/achievement.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Achievements", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/referenc.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("References", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/about.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Declaration", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.transparent,
                                    child: Image(
                                      image: const AssetImage(
                                          "assets/images/addr.png"),
                                      height: size.height * 0.1,
                                      width: size.width * 0.2,
                                      color: Globals.mycolor,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text("Resume Themes", style: mystyle),
                                      myicon,
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
