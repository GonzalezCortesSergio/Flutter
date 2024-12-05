import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle =
        TextStyle(color: Color.fromARGB(255, 253, 190, 0));
    return Scaffold(
        body: Container(
          color: Colors.greenAccent,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("Login")),
                Divider(
                  height: 100,
                  color: Colors.green.shade200,
                ),
                SizedBox(
                    height: 100,
                    width: 100,
                    child: Container(
                      color: Colors.blue.shade300,
                      child: const Center(
                          child: Text(
                        "hola",
                        style: textStyle,
                      )),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 30),
                  child: const Text("Registro"),
                ),
                const Text("¿Olvidaste la contraseña?")
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
        appBar: AppBar(title: const Text("Login Page")));
  }
}
