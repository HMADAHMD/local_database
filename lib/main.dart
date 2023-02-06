import 'package:flutter/material.dart';
import 'package:local_database/textscree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({super.key});
  List mylist = <String>['Rice', 'Wheat', 'Water'];

  String returnedValue = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List_View"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 620,
                width: 400,
                decoration: BoxDecoration(color: Colors.red[100]),
                child: ListView.builder(
                  itemCount: mylist.length,
                  itemBuilder: ((BuildContext context, index) {
                    return Card(child: ListTile(title: Text(mylist[index])));
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () async {
                    returnedValue = await Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return TextScreen();
                    })));
                    setState(() {
                      mylist.add(returnedValue);
                    });

                    print(mylist);
                  },
                  child: Icon(Icons.add),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
