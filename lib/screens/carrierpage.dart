import 'package:flutter/material.dart';
import '../methos.dart';

class Carrier_object extends StatefulWidget {
  const Carrier_object({Key? key}) : super(key: key);

  @override
  State<Carrier_object> createState() => _Carrier_objectState();
}

class _Carrier_objectState extends State<Carrier_object> {
  final GlobalKey<FormState> Formkey = GlobalKey<FormState>();
  TextEditingController CarrierobjectiveController = TextEditingController();
  TextEditingController CarrierDesignationController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    CarrierDesignationController.text = "Software Devloper";
    CarrierobjectiveController.text =
        "A career objective explains your professional goals. "
        "It is a brief description of not more than two or three sentences. "
        "The recruiter needs to know that you are driven and dedicated to the position.";
  }

  @override
  Widget build(BuildContext context) {
    Color cardcolor = Colors.white;
    Color formcolor = Colors.black;
    Color formcolor2 = Colors.blueAccent;
    var size = MediaQuery.of(context).size;
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
                  "Carrier Objective Options",
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
                child: Form(
                  key: Formkey,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(18),
                          height: size.height * 0.3,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Career Objective",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: cardcolor,
                                child: TextFormField(
                                  controller: CarrierobjectiveController,
                                  keyboardType: TextInputType.multiline,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Descripation...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    Globals.Carrierobjective =
                                        CarrierobjectiveController.text;
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
                                    hintText: "Enter Descripation",
                                    labelText: "Descripation",
                                    labelStyle: TextStyle(
                                        color: formcolor2,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  maxLines: 5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(18),
                          height: size.height * 0.24,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.brown.shade300,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Current Designation (Experienced Candidate)",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: cardcolor,
                                child: TextFormField(
                                  controller: CarrierDesignationController,
                                  keyboardType: TextInputType.text,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Designation...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    Globals.CarrierDesignation =
                                        CarrierDesignationController.text;
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
                                    hintText: "Software Devloper",
                                    labelText: "Designation",
                                    labelStyle: TextStyle(
                                        color: formcolor2,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
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
                                fixedSize: MaterialStateProperty.all(Size(
                                    size.width * 0.24, size.height * 0.052)),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Formkey.currentState!.reset();
                                CarrierDesignationController.clear();
                                CarrierobjectiveController.clear();
                                setState(() {
                                  Globals.CarrierDesignation = '';
                                  Globals.Carrierobjective = '';
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
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red),
                              ),
                              style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                      color: Color(0xff2d405e), width: 2),
                                ),
                                fixedSize: MaterialStateProperty.all(Size(
                                    size.width * 0.24, size.height * 0.052)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
