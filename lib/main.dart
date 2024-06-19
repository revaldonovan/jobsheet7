import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Halo Dunia',
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.center, 
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[50],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 10,
                          blurRadius: 5,
                          offset: Offset(30, 30),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Apa Kabar',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                        Text(
                          'Fabri',
                          style: TextStyle(fontSize: 45, color: Colors.blue,
                          fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {
                },
                 child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.refresh, 
                  color: Colors.white,
                  size:25,
                  )
                  ),
                   backgroundColor: Colors.transparent,
                   elevation: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}