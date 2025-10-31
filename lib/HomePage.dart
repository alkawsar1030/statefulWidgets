import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int iemCount=1;
  void counter() {
    setState(() {
      iemCount=iemCount+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My counterApp'),),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(iemCount.toString(),style: TextStyle(fontSize: 40),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            counter();
          },
        child:Text('+') ,
      ),
    );
  }

 
}
