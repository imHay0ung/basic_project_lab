import 'package:flutter/material.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<StatefulWidget> createState() => RecommendState();
}

class RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "추천",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15.0),
              height: size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyanAccent
              ),
            )
          ],
        ),
      ),
    );
  }
}