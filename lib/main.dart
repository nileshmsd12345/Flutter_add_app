import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var no1;
  var no2;
  var result;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Addition'),
          actions: [
            Icon(Icons.menu_outlined),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Addition',
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.5)),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Number One',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      no1 = double.parse(value);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Number two',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      no2 = double.parse(value);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      onPressed: (){
                        setState(() {
                          result= no1+ no2;
                        });
                      },
                  ),

                ),
               SizedBox(width: 80,),
               Text('$result'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
