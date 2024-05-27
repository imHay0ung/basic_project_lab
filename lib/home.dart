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
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: const EdgeInsets.all(30),
                      width: size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "등산하기",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 40.0,
                                color: Colors.black),
                          ),
                          Text(
                            "자연을 즐기면서 신체적인 운동을 할 수 있는 활동입니다.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                                color: Colors.black),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            "산에 올라가는 사람들은 항상 행복합니다! 왜냐하면... 그들은 항상 \"고도\"한 유머를 가지고 있기 때문이죠! 이 농담이 등산 모임에서 분위기를 띄우는 데 도움이 되길 바랍니다!",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20.0,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    );
                  });
            },
            child: Container(
              width: size.width,
              height: size.height * 0.5,
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30.0)),
                image: DecorationImage(
                    image: AssetImage("images/home/background.png"),
                    fit: BoxFit.cover),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "안녕하세요, 하영 님!",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  Text(
                    "더 많은 일을 해보세요!",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.0,
                    mainAxisSpacing: 15.0),
                shrinkWrap: true,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(30),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                          image: AssetImage("images/home/1.png"),
                          fit: BoxFit.cover),
                    ),
                    child: const Text("등산의 맛",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(30),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                          image: AssetImage("images/home/2.png"),
                          fit: BoxFit.cover),
                    ),
                    child: const Text("등산 맛있다",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(30),
                    width: 200,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: const DecorationImage(
                          image: AssetImage("images/home/3.png"),
                          fit: BoxFit.cover),
                    ),
                    child: const Text("Streetside Cafe",
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
