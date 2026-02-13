import 'package:firstapp/src/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Info")),
      body: Column(
        children: [
          // CircleAvatar(radius: 90, backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLFYQMyuFmoJTICcSp2M-RPFCxSC8oNYLsnw&s"),),
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("assets/images/isme.jpeg"),
          ),
          Text(
            "Thanesuan phetnused",
            style: TextStyle(fontFamily: "Pacifico", fontSize: 30),
          ),
          Text(
            "STUDENT",
            style: TextStyle(fontFamily: 'SourceSans3', fontSize: 20),
          ),
          SizedBox(
            height: 30,
            width: 150,
            child: Divider(color: Colors.lightBlueAccent, thickness: 5),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.grey,
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.black),
                Text('Name : Thanesuan Phetnused', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.grey,
            child: Row(
              children: [
                Icon(Icons.book, color: Colors.black),
                Text('Major : Computer Science', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.grey,
            child: Row(
              children: [
                Icon(Icons.email, color: Colors.black),
                Text('Email : 664234001@parichat.skru.ac.th', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ],
      ),
    );
  } //end
} //end class
