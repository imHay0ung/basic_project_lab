import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "마이 페이지",
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/icon.jpg", width: 100, height: 100,),
                const SizedBox(width: 75,),
                const Column(
                  children: [
                    Text("산의 마스터", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Text("하영 님!", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
            const SizedBox(height: 30,),
            OutlinedButton(onPressed: (){}, style: OutlinedButton.styleFrom(minimumSize: Size(size.width * 0.8, 75), foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), child: const Text("나의 칭호", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
            const SizedBox(height: 30,),
            OutlinedButton(onPressed: (){}, style: OutlinedButton.styleFrom(minimumSize: Size(size.width * 0.8, 75), foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))), child: const Text("활동 빙고", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),))
          ],
        ),
      ),
    );
  }
}