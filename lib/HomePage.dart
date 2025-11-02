import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();

  bool runNow=true;
  String item = "";
  List itemList=[];

  setItem(value){
    setState(() {
     item=value;
    });
  }

  addItem(item){

    setState(() {
      itemList.add(item);
    });
    //item=null;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My counterApp')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: controller,
            onChanged: (value) {
              setItem(value);
              },
          ),

          SizedBox(height: 5),

           ElevatedButton(

             onPressed: () {
               if (controller.text.isEmpty) return;
               addItem(item);
               controller.clear();
               },
             child: Text('Add these'),
           ),

          SizedBox(height: 5),

         SingleChildScrollView(
           child: Container(
             height: 400,
             child: ListView.builder(
               shrinkWrap: true,
               itemCount: itemList.length,
                 itemBuilder: (context, index) {
                 if(runNow){
                   return ListTile(

                     title: Text("(${index+1}) ${itemList[index]}"),
                   );
                 }

             
                 },
             ),
           ),
         ),
        ],
      ),
    );
  }
}
