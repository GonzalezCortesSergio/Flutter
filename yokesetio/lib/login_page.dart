import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child:
                  ElevatedButton(onPressed: () {}, child: const Text("Login")),
            ),
            const Text("Estamo en un login peich"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        appBar: AppBar(title: const Text("Login Page")));
  }
}
