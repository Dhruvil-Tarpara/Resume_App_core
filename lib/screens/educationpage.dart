import 'package:flutter/material.dart';
import '../methos.dart';

class Educationpage extends StatefulWidget {
  const Educationpage({Key? key}) : super(key: key);

  @override
  State<Educationpage> createState() => _EducationpageState();
}

class _EducationpageState extends State<Educationpage> {

  final GlobalKey<FormState> Formkey = GlobalKey<FormState>();
  TextEditingController Coursecontroller = TextEditingController();
  TextEditingController Schoolcontroller = TextEditingController();
  TextEditingController CGPAcontroller = TextEditingController();
  TextEditingController PassingYearcontroller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Coursecontroller.text = "Bachelors's in Computer Application";
    Schoolcontroller.text = "Veer Narmad South Gujarat University";
    CGPAcontroller.text = "8.9";
    PassingYearcontroller.text = "2020";
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color cardcolor = Colors.white;
    Color formcolor = Colors.black;
    Color formcolor2 = Colors.blueAccent;

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
                  "Education Details",
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
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    height: size.height * 0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Form(
                          key: Formkey,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                const Text(
                                  "Course/Dedree",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    autovalidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    controller: Coursecontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your Degree...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.Course = Coursecontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: formcolor,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                              color: formcolor2, width: 2),
                                        ),
                                        hintText: "B.C.A",
                                        labelText: "Course",
                                        labelStyle: TextStyle(
                                          color: formcolor2,
                                        )
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                const Text(
                                  "School/College/Institute",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType:
                                    TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    autovalidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    controller: Schoolcontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your College...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.School =
                                          Schoolcontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: formcolor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: formcolor2, width: 2),
                                      ),
                                      hintText: "Enter your College",
                                      labelText: "College",
                                      labelStyle: TextStyle(
                                        color: formcolor2,
                                      ),
                                      counterStyle: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                const Text(
                                  "School/College",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    autovalidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    controller: CGPAcontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter CGPA...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.CGPA =
                                          CGPAcontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: formcolor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: formcolor2, width: 2),
                                      ),
                                      hintText: "",
                                      labelText: "Percentage",
                                      labelStyle: TextStyle(
                                        color: formcolor2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                const Text(
                                  "Year Of Pass",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.datetime,
                                    textInputAction: TextInputAction.done,
                                    autovalidateMode: AutovalidateMode
                                        .onUserInteraction,
                                    controller: PassingYearcontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter passing year...";
                                      }
                                      else if(val.length != 4 ){
                                        return "invalid year";
                                      }
                                      else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.PassingYear =
                                          PassingYearcontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: formcolor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: formcolor2, width: 2),
                                      ),
                                      hintText: "YYYY",
                                      labelText: "Year",
                                      labelStyle: TextStyle(
                                        color: formcolor2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (Formkey.currentState!.validate()) {
                                Formkey.currentState!.save();

                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content:
                                    Text("Data save Successfull..."),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  SnackBar(
                                    content: Text("failed..."),
                                    backgroundColor: Colors.red,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              }
                            },
                            child: Text(
                              "Save",
                              style: TextStyle(fontSize: 18),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xff2d405e),
                              ),
                              fixedSize: MaterialStateProperty.all(Size(
                                  size.width * 0.24,
                                  size.height * 0.052)),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Formkey.currentState!.reset();
                              Coursecontroller.clear();
                              Schoolcontroller.clear();
                              CGPAcontroller.clear();
                              PassingYearcontroller.clear();
                              setState(() {
                                Globals.School = '';
                                Globals.Course = '';
                                Globals.CGPA = '';
                                Globals.PassingYear = '';
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Data Reset Successfull"),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            },
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.red),
                            ),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(
                                    color: Color(0xff2d405e), width: 2),
                              ),
                              fixedSize: MaterialStateProperty.all(Size(
                                  size.width * 0.24,
                                  size.height * 0.052)),
                            ),
                          ),
                        ],
                      ),
                  ],
              ),
                ),
            ),
        ),
        ],
      ),
      ),
    );
  }
}
