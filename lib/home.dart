import 'package:flutter/material.dart';
import 'package:jsopractica/models/data.dart';
import './models/person.dart';
import 'models/people.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hashData = false;
  late List<Person> users;
  @override
  void initState() {
    getData().then((value) {
      users = value;
      hashData = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 242, 255),
        appBar: AppBar(
          title: Text("People"),
        ),
        body: hashData
            ? ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(users[index].picture),
                    ),
                    title: Text(users[index].name),
                    trailing: Text(users[index].country),
                    onTap: () => Navigator.pushNamed(context, Persos.routname,
                        arguments: users[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(height: 3,color: Color.fromARGB(31, 141, 138, 138),);
                },
                itemCount: users.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
