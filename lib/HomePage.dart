import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  double num1=0;
  double num2=0;
  double result=0;
  void clearText() {
    controller.clear(); // এই লাইনটি TextField-এর লেখা মুছে দেবে
  }
  // void counter() {
  //   setState(() {
  //    num1+num2;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My counterApp'),),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           TextFormField(

              onChanged: (value) {
                setState(() {
                  num1=double.parse(value);
                });
              },
           ) ,
            SizedBox(height: 10,),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  num2=double.parse(value);


                });
              },
            ) ,
           SizedBox(height: 10,),
           ElevatedButton(onPressed: (){
             setState(() {
               result= num1+num2;

             });
             clearText();

           },
               child: Text('Add these')
           ),
            SizedBox(height: 10,),
            Text('The Resust is ${result}'),


          ],
        ),
      ),

    );
  }

 
}
