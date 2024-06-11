import 'package:basic_project_lab/mypage.dart';
import 'package:basic_project_lab/recommend.dart';
import 'package:basic_project_lab/scrap.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<StatefulWidget> createState() => TabState();
}

class TabState extends State<Tabbar> with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [Home(), Scrap(), Recommend(), MyPage()],
      ),
      bottomNavigationBar: TabBar(
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.newspaper),
          ),
          Tab(
            icon: Icon(Icons.recommend),
          ),
          Tab(
            icon: Icon(Icons.manage_accounts),
          )
        ],
        controller: controller,
      ),
    );
  }
}