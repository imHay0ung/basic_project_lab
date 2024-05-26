import 'package:basic_project_lab/tabbar.dart';
import 'package:flutter/material.dart';

import 'auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  final auth = Auth();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  register() async {
    final user = auth.createUser(emailController.text, passwordController.text);
    user.then((value) {
      print("register complete.");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Tabbar()));
    }).catchError((error) {
      showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              content: const Text("Error!"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("OK"))
              ],
            );
          });
    });
  }

  login() async {
    final user = auth.loginUser(emailController.text, passwordController.text);
    user.then((value) {
      print("login complete.");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Tabbar()));
    }).catchError((error) {
      showDialog(
          context: context,
          builder: (BuildContext ctx) {
            return AlertDialog(
              content: const Text("Error!"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("OK"))
              ],
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "images/login/background.png",
              height: size.height * 0.6,
            ),
            const SizedBox(
              height: 30,
            ),
            const DefaultTextStyle(
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
                child: Text("오늘 뭐하지?")),
            const DefaultTextStyle(
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.black),
                child: Text("지금 가장 인기있는 활동을 직접 경험하세요!")),
            SizedBox(
              width: size.width * 0.8,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(hintText: "E-mail"),
              ),
            ),
            SizedBox(
              width: size.width * 0.8,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: "Password"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: register, child: const Text("회원가입")),
                ElevatedButton(onPressed: login, child: const Text("로그인"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
