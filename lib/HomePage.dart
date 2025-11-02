import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();

  String item = "";
  List itemList=[];
  setItem(value){
    setState(() {
     item=value;
    });
  }
  addItem(value){
    setState(() {
      itemList.add(item);
    });
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
            //controller: controller,
            onChanged: (value) {
              setItem(value);



            },
          ),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {

              addItem(item);

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
                 return ListTile(
                   title: Text("(${index+1}) ${itemList[index]}"),
                 );
             
                 },
             ),
           ),
         ),
        ],
      ),
    );
  }
}
