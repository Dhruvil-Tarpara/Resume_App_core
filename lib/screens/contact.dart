import 'dart:io';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import '../methos.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({Key? key}) : super(key: key);

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  final GlobalKey<FormState> Formkey = GlobalKey<FormState>();

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();


  bool chang = true;

  final ImagePicker picker = ImagePicker();

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          chang = true;
                        });
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          chang = false;
                        });
                      },
                      child: Text(
                        "Photo",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
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
                child: (chang)
                    ? SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              height: size.height * 0.5,
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
                                    children: [
                                      SizedBox(
                                        height: size.height * 0.02,
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
                                          controller: namecontroller,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter name first...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            Globals.name = namecontroller.text;
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
                                            icon: Icon(
                                              Icons.person,
                                              size: 36,
                                              color: formcolor,
                                            ),
                                            hintText: "Enter your name",
                                            labelText: "Name",
                                            labelStyle: TextStyle(
                                              color: formcolor2,
                                            )
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        color: cardcolor,
                                        child: TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: emailcontroller,
                                          validator: MultiValidator(
                                            [
                                              EmailValidator(
                                                  errorText:
                                                      "Enter valid email"),
                                              RequiredValidator(
                                                  errorText: "Enter email..")
                                            ],
                                          ),
                                          onSaved: (val) {
                                            Globals.email =
                                                emailcontroller.text;
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
                                            icon: Icon(
                                              Icons.mail,
                                              size: 36,
                                              color: formcolor,
                                            ),
                                            hintText: "Enter your email",
                                            labelText: "Email",
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
                                          controller: phonenumbercontroller,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter number...";
                                            } else if (val.length < 10) {
                                              return "invalid number...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            Globals.phonenumber =
                                                phonenumbercontroller.text;
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
                                            icon: Icon(
                                              Icons.phone_android,
                                              size: 36,
                                              color: formcolor,
                                            ),
                                            hintText: "Enter your Phone number",
                                            labelText: "Phone",
                                              labelStyle: TextStyle(
                                                color: formcolor2,
                                              ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        color: cardcolor,
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          textInputAction: TextInputAction.done,
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          controller: addresscontroller,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter address...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            Globals.address =
                                                addresscontroller.text;
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
                                            icon: Icon(
                                              Icons.location_pin,
                                              size: 36,
                                              color: formcolor,
                                            ),
                                            hintText: "Enter address...",
                                            labelText: "Address",
                                              labelStyle: TextStyle(
                                                color: formcolor2,
                                              ),
                                          ),
                                          maxLines: 3,
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
                            SizedBox(
                              height: size.height * 0.04,
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
                                    namecontroller.clear();
                                    emailcontroller.clear();
                                    phonenumbercontroller.clear();
                                    addresscontroller.clear();

                                    setState(() {
                                      Globals.name = '';
                                      Globals.email = '';
                                      Globals.phonenumber = '';
                                      Globals.address = '';
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
                      )
                    : Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        height: size.height * 0.3,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: Colors.brown.shade300,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                             (Globals.imagefile != null) ?
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: FileImage(Globals.imagefile as File),
                              radius: 70,
                            )
                              :CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 70,
                              ),
                            Text("Add to Image"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () async {
                                    XFile? pickedImage = await picker.pickImage(
                                        source: ImageSource.camera);
                                    setState(() {
                                         Globals.imagefile = File(pickedImage!.path);
                                    });
                                  },
                                  child: Text(
                                    "Open Camera",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xff2d405e),
                                    ),
                                    fixedSize: MaterialStateProperty.all(Size(
                                        size.width * 0.3, size.height * 0.052)),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () async {
                                    XFile? pickedImage = await picker.pickImage(
                                        source: ImageSource.gallery);
                                    setState(() {
                                        Globals.imagefile = File(pickedImage!.path);
                                    });
                                  },
                                  child: Text(
                                    "Open PhotoLibrary",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Color(0xff2d405e),
                                    ),
                                    fixedSize: MaterialStateProperty.all(Size(
                                        size.width * 0.3, size.height * 0.052)),
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
