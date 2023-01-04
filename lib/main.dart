import 'package:flutter/material.dart';
import 'package:resume_builder/screens/carrierpage.dart';
import 'package:resume_builder/screens/contact.dart';
import 'package:resume_builder/screens/educationpage.dart';
import 'package:resume_builder/screens/experiencepage.dart';
import 'package:resume_builder/screens/firstpage.dart';
import 'package:resume_builder/screens/personalpage.dart';
import 'package:resume_builder/screens/secondpage.dart';
import 'package:resume_builder/screens/technicalpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Mainpage(),
        '_firstpage' : (context) => const Firstpage(),
        'secondpage' : (context) => const Secondpage(),
        'contactpage' : (context) => const Contactpage(),
        'carrierpage' : (context) => const Carrier_object(),
        'personalpage' : (context) => const Personal_details(),
        'educationpage' : (context) => const Educationpage(),
        'experincepage' : (context) => const Experiencepage(),
        'technicalpage' : (context) => const Technical_skillpage(),
      },
    ),
  );
}

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {

  bool spalse = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            color: Color(0xff2d405e),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  const Image(
                    image: AssetImage("assets/images/Rlogo1.png"),
                    height: 280,
                    width: 280,
                  ),
                  if(spalse) const CircleAvatar(
                    radius: 32,
                    backgroundImage:AssetImage("assets/images/1.gif"
                    ),
                  ),
                ],
              ),
              const Image(
                image: AssetImage("assets/images/Rlogo2.png"),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              InkWell(
                onTap: (){
                  setState((){
                    spalse = false;
                    Navigator.pushNamed(context,"_firstpage");
                  });
                },
                radius: 100,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.08,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff52f6db),Color(0xff5dedae),]
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Enter",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "Creat your resume.",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
