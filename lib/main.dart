import 'package:flutter/material.dart';

void main() {
  runApp(const mywidget());
}
class mywidget extends StatelessWidget {
  const mywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter day2',style: TextStyle(color: Colors.amber),),
          backgroundColor: Colors.black,
          leading: Icon(Icons.call,color: Colors.amber),
          actions: [
            Icon(Icons.notification_add,color: Colors.amber,),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(40, 20, 50, 10),
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.blueGrey,),
              width: 100,
              height: 100,
              clipBehavior: Clip.hardEdge,
              child: Image.asset('images/img2.jpeg',fit: BoxFit.cover,),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 30),
              child: TextField(
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail'),),

            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'password'),),
            ),
            Container(
              width: 320,
              height: 40,
              color: Colors.amber[700],
                child: TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 19),)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 13, 50, 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text('data'),
                    ),
                  Container(
                    child: TextButton(onPressed: (){}, child:Text('Regester',style: TextStyle(color: Colors.blueAccent[700]),)),
                  ),
                ],
              ),
            ),
            Container(
              child: TextButton(onPressed: (){}, child:Text('Forget Password',style: TextStyle(color: Colors.blueAccent[700]),)),  
           ),
          ],
        ),
      ),
    );
  }
}
