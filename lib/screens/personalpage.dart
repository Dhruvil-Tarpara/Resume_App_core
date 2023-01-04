import 'package:flutter/material.dart';
import '../methos.dart';

class Personal_details extends StatefulWidget {
  const Personal_details({Key? key}) : super(key: key);

  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  final GlobalKey<FormState> Formkey = GlobalKey<FormState>();
  TextEditingController DOBController = TextEditingController();
  TextEditingController NationalityController = TextEditingController();
  bool redio = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Globals.Meritalstatus = "Singal";
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
                  "Personal Details",
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
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: cardcolor,
                                  child: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: DOBController,
                                    keyboardType: TextInputType.datetime,
                                    textInputAction: TextInputAction.next,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Birth...";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Globals.DOB = DOBController.text;
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
                                      icon: Icon(
                                        Icons.cake,
                                        size: 36,
                                        color: formcolor,
                                      ),
                                      hintText: "DD/MM/YYYY",
                                      labelText: "Data of Birth",
                                      labelStyle: TextStyle(
                                          color: formcolor2,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                const Text(
                                  "Merital Status",
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
                                  child: Column(
                                    children: [
                                      RadioListTile(
                                        title: Text(
                                          "Singal",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (redio)
                                                  ? Colors.blueAccent
                                                  : Colors.grey),
                                        ),
                                        visualDensity:
                                            VisualDensity(vertical: -4),
                                        value: "Singal",
                                        groupValue: Globals.Meritalstatus,
                                        onChanged: (val) {
                                          setState(() {
                                            redio = true;
                                            Globals.Meritalstatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text(
                                          "Married",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (redio)
                                                  ? Colors.grey
                                                  : Colors.blueAccent),
                                        ),
                                        visualDensity:
                                            VisualDensity(vertical: -4),
                                        value: "Married",
                                        groupValue: Globals.Meritalstatus,
                                        onChanged: (val) {
                                          setState(() {
                                            redio = false;
                                            Globals.Meritalstatus =
                                                val.toString();
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                const Text(
                                  "Languages Known",
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
                                  child: Column(
                                    children: [
                                      CheckboxListTile(
                                        title: Text(
                                          "English",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (Globals.einglish)
                                                  ? Colors.green
                                                  : Colors.grey),
                                        ),
                                        visualDensity:
                                            VisualDensity(vertical: -4),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        value: Globals.einglish,
                                        onChanged: (val) {
                                          setState(() {
                                            Globals.einglish = val!;
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text(
                                          "Gujarati",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (Globals.gujarati)
                                                  ? Colors.green
                                                  : Colors.grey),
                                        ),
                                        visualDensity:
                                            VisualDensity(vertical: -4),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        value: Globals.gujarati,
                                        onChanged: (val) {
                                          setState(() {
                                            Globals.gujarati = val!;
                                          });
                                        },
                                      ),
                                      CheckboxListTile(
                                        title: Text(
                                          "Hindi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: (Globals.hindi)
                                                  ? Colors.green
                                                  : Colors.grey),
                                        ),
                                        visualDensity:
                                            VisualDensity(vertical: -4),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        value: Globals.hindi,
                                        onChanged: (val) {
                                          setState(() {
                                            Globals.hindi = val!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                const Text(
                                  "Nationality",
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
                                  child: DropdownButton(
                                    onChanged: (val) {
                                      setState(() {
                                        Globals.Nationality = val.toString();
                                      });
                                    },
                                    alignment: Alignment.center,
                                    dropdownColor: Colors.blue,
                                    value: Globals.Nationality,
                                    items: const [
                                      DropdownMenuItem(
                                        value: "Indian",
                                        child: Text("Indian"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Russian",
                                        child: Text("Russian"),
                                      ),
                                      DropdownMenuItem(
                                        value: "UK",
                                        child: Text("UK"),
                                      ),
                                      DropdownMenuItem(
                                        value: "Other",
                                        child: Text("Other"),
                                      ),
                                    ],
                                  ),
                                ),
                                if (Globals.Nationality.toString() == "Other")
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: cardcolor,
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: NationalityController,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.done,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your country...";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        Globals.Nationality =
                                            NationalityController.text;
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
                                        hintText: "Indian",
                                        labelText: "Country",
                                        labelStyle: TextStyle(
                                            color: formcolor2,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
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
