import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        InkWell(
          child: Image.asset("images/home/background.png",
              height: size.height * 0.5),
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  );
                });
          },
        ),
        const SizedBox(height: 30),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(80, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        icon: const Icon(Icons.restaurant, size: 18),
                        label: const Text("식사")),
                    const SizedBox(width: 30),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(80, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        icon: const Icon(Icons.home, size: 18),
                        label: const Text("미술")),
                    const SizedBox(width: 30),
                    ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(80, 70),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        icon: const Icon(Icons.airplane_ticket, size: 18),
                        label: const Text("여행"))
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0),
                shrinkWrap: true,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("images/home/1.png"),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("images/home/2.png"),
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset("images/home/3.png"),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
