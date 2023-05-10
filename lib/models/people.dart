import 'package:flutter/material.dart';
import 'person.dart';

class Persos extends StatelessWidget {
  final Person people;
  Persos({super.key, required this.people});
  static String routname = "people";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 235, 242, 255),
      appBar: AppBar(
        title: Text(people.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Center(
              child: CircleAvatar(
                  radius: 100, backgroundImage: NetworkImage(people.picture)),
            )),
            SizedBox(height: 40,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Center(child: Column(children: [Text('Hi, My name is',style: TextStyle(fontSize: 20),),
            Text(people.name,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)
            ],)),
              SizedBox(height: 20,),
            Text("My username ---------- ${people.username}"),
             SizedBox(height: 20,),
            Text("My Country -------------- ${people.country}"),
             SizedBox(height: 20,),
            Text("My City ---------------------- ${people.city}"),
              SizedBox(height: 20,),
            Text("My Email ------------------- ${people.email}"),
            SizedBox(height: 20,),
            Text("My phone number ----------${people.call}")
              ],)
          ],
        ),
      ),
    );
  }
}
