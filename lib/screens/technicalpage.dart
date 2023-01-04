import 'package:flutter/material.dart';

class Technical_skillpage extends StatefulWidget {
  const Technical_skillpage({Key? key}) : super(key: key);

  @override
  State<Technical_skillpage> createState() => _Technical_skillpageState();
}

class _Technical_skillpageState extends State<Technical_skillpage> {

  // late int index;
  // Technical_skillpage(int i)
  // {
  //   this.index = i;
  // }

  final GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  TextEditingController SkillController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  "Technical Skill Details",
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
                child: Column(
                  children: [
                    // TextFormField(
                    //   controller: SkillController,
                    //   // save text field data in friends list at index
                    //   // whenever text field value changes
                    //   onChanged: (v)  => Globals.SkillList[index] = v,
                    //   decoration: InputDecoration(
                    //       hintText: 'Enter your friend\'s name'
                    //   ),
                    //   validator: (v){
                    //     if(v!.trim().isEmpty) return 'Please enter something';
                    //     return null;
                    //   },
                    // ),
 //                   ..._getFriends(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
 // }
  // List<Widget> _getFriends(){
  //   List<Widget> TextsList = [];
  //   for(int i=0; i<TextsList.length; i++){
  //     TextsList.add(
  //         Padding(
  //           padding: const EdgeInsets.symmetric(vertical: 16.0),
  //           child: Row(
  //             children: [
  //               Expanded(child: Technical_skillpage(i)),
  //               SizedBox(width: 16,),
  //               // we need add button at last friends row only
  //               _addRemoveButton(i == TextsList.length-1, i),
  //             ],
  //           ),
  //         )
  //     );
  //   }
  //   return TextsList;
  // }
  //
  // Widget _addRemoveButton(bool add, int index){
  //   return InkWell(
  //     onTap: (){
  //       if(add){
  //         // add new text-fields at the top of all friends textfields
  //         Globals.SkillList.insert(0,'');
  //       }
  //       else Globals.SkillList.removeAt(index);
  //       setState((){});
  //     },
  //     child: Container(
  //       width: 30,
  //       height: 30,
  //       decoration: BoxDecoration(
  //         color: (add) ? Colors.green : Colors.red,
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       child: Icon(
  //         (add) ? Icons.add : Icons.remove, color: Colors.white,
  //       ),
  //     ),
  //   );
  }
}
