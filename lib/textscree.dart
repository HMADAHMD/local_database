import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextScreen extends StatelessWidget {
  //const TextScreen({super.key});
  String textt = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white10),
                    child: TextField(
                      decoration: const InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Enter City",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder()),
                      autocorrect: false,
                      onChanged: (value) {
                        textt = value;
                      },
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, textt);
                    },
                    child: Text("Pass Data"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
