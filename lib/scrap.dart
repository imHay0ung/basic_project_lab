import 'package:flutter/material.dart';

class Scrap extends StatefulWidget {
  const Scrap({super.key});

  @override
  State<StatefulWidget> createState() => ScrapState();
}

class ScrapState extends State<Scrap> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "스크랩",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset("images/scrap/1.png", width: size.width, height: 200, fit: BoxFit.fitWidth,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("등산하기",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset("images/scrap/2.jpg", width: size.width, height: 200, fit: BoxFit.fitWidth,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("크록스 꾸미기",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Image.asset("images/scrap/3.jpg", width: size.width, height: 200, fit: BoxFit.fitWidth,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("네이버 블로그 기사",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark))
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
