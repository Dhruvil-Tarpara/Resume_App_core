import 'package:flutter/material.dart';

import '../methos.dart';

class Experiencepage extends StatefulWidget {
  const Experiencepage({Key? key}) : super(key: key);

  @override
  State<Experiencepage> createState() => _ExperiencepageState();
}

class _ExperiencepageState extends State<Experiencepage> {
  final GlobalKey<FormState> Formkey = GlobalKey<FormState>();

  TextEditingController Companycontroller = TextEditingController();
  TextEditingController Institutecontroller = TextEditingController();
  TextEditingController Rolescontroller = TextEditingController();
  TextEditingController Joinecontroller = TextEditingController();
  TextEditingController Exitcontroller = TextEditingController();
  bool redio = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Rolescontroller.text =
        " Employees are held accountable for completing several "
        "tasks in the workplace.";
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
                  "Experience Details",
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
                                  "Company Name",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: Companycontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your Degree...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.Companyname =
                                          Companycontroller.text;
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
                                        hintText: "Danyal info",
                                        labelText: "Name",
                                        labelStyle: TextStyle(
                                          color: formcolor2,
                                        )),
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.next,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: Institutecontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter details...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.Institute =
                                          Institutecontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: formcolor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: formcolor2, width: 2),
                                      ),
                                      hintText: "",
                                      labelText: "Institute name",
                                      labelStyle: TextStyle(
                                        color: formcolor2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                const Text(
                                  "Roles (optional)",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    textInputAction: TextInputAction.done,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: Rolescontroller,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter your Roles in Company...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.Roles = Rolescontroller.text;
                                    },
                                    cursorColor: formcolor,
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: formcolor,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: formcolor2, width: 2),
                                      ),
                                      hintText: "",
                                      labelText: "Roles",
                                      labelStyle: TextStyle(
                                        color: formcolor2,
                                      ),
                                      counterStyle: TextStyle(
                                        fontSize: 24,
                                      ),
                                    ),
                                    maxLines: 3,
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("  Employed Status"),
                                      RadioListTile(
                                        title: Text(
                                          "Previously Employed",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (redio)
                                                  ? Colors.blueAccent
                                                  : Colors.grey),
                                        ),
                                        visualDensity: VisualDensity(
                                            vertical: -4, horizontal: -4),
                                        value: "Previously Employed",
                                        groupValue: Globals.Employedstatus,
                                        onChanged: (val) {
                                          setState(() {
                                            redio = true;
                                            Globals.Employedstatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text(
                                          "Currently Employed",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (redio)
                                                  ? Colors.grey
                                                  : Colors.blueAccent),
                                        ),
                                        visualDensity: VisualDensity(
                                            vertical: -4, horizontal: -4),
                                        value: "Currently Employed",
                                        groupValue: Globals.Employedstatus,
                                        onChanged: (val) {
                                          setState(() {
                                            redio = false;
                                            Globals.Employedstatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                (redio)
                                ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Date Joined",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.054,
                                          width: size.width * 0.36,
                                          decoration: BoxDecoration(
                                            color: cardcolor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextFormField(
                                            textAlign: TextAlign.center,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: Joinecontroller,
                                            keyboardType:
                                                TextInputType.datetime,
                                            textInputAction:
                                                TextInputAction.next,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter date...";
                                              } else {
                                                return null;
                                              }
                                            },
                                            onSaved: (val) {
                                              Globals.Joinedate =
                                                  Joinecontroller.text;
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
                                                    color: formcolor2,
                                                    width: 2),
                                              ),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Date Exit",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.054,
                                          width: size.width * 0.36,
                                          decoration: BoxDecoration(
                                            color: cardcolor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextFormField(
                                            textAlign: TextAlign.center,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: Exitcontroller,
                                            keyboardType:
                                                TextInputType.datetime,
                                            textInputAction:
                                                TextInputAction.next,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter date...";
                                              } else {
                                                return null;
                                              }
                                            },
                                            onSaved: (val) {
                                              Globals.Exitdate =
                                                  Exitcontroller.text;
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
                                                    color: formcolor2,
                                                    width: 2),
                                              ),
                                              hintText: "DD/MM/YYYY",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                                :   Column(
                                  children: [
                                    Text(
                                      "Date Joined",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.054,
                                      width: size.width * 0.36,
                                      decoration: BoxDecoration(
                                        color: cardcolor,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      child: TextFormField(
                                        textAlign: TextAlign.center,
                                        autovalidateMode: AutovalidateMode
                                            .onUserInteraction,
                                        controller: Joinecontroller,
                                        keyboardType:
                                        TextInputType.datetime,
                                        textInputAction:
                                        TextInputAction.next,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter date...";
                                          } else {
                                            return null;
                                          }
                                        },
                                        onSaved: (val) {
                                          Globals.Joinedate =
                                              Joinecontroller.text;
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
                                                color: formcolor2,
                                                width: 2),
                                          ),
                                          hintText: "DD/MM/YYYY",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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

                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Data save Successfull..."),
                                    backgroundColor: Colors.green,
                                    behavior: SnackBarBehavior.floating,
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
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
                              fixedSize: MaterialStateProperty.all(
                                  Size(size.width * 0.24, size.height * 0.052)),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Formkey.currentState!.reset();
                              Companycontroller.clear();
                              Institutecontroller.clear();
                              Rolescontroller.clear();
                              Joinecontroller.clear();
                              Exitcontroller.clear();
                              setState(() {
                                Globals.Companyname = '';
                                Globals.Roles = '';
                                Globals.Institute = '';
                                Globals.Joinedate = '';
                                Globals.Exitdate = '';
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
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(
                                BorderSide(color: Color(0xff2d405e), width: 2),
                              ),
                              fixedSize: MaterialStateProperty.all(
                                  Size(size.width * 0.24, size.height * 0.052)),
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
