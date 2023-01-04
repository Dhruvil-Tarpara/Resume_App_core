import 'package:flutter/material.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2d405e),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xff2d405e),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Resume Builder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "RESUMES",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: SizedBox.expand(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      const Image(
                        image: AssetImage("assets/images/dropbox-logo.png"),
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      Text(
                        "No Resume + Create new resume.",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            Navigator.pushNamed(context, "secondpage");
          });
        },
        splashColor: const Color(0xff2d405e),
        elevation: 50,
        tooltip: "Creat resume",
        backgroundColor: const  Color(0xff57f0bf),
        child: const Icon(Icons.add,size: 34,color: Colors.black,),
      ),
      backgroundColor: const Color(0xff2d405e),
    );
  }
}
