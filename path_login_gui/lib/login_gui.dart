import 'package:flutter/material.dart';

class LoginGui extends StatelessWidget {
  const LoginGui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 47, 22, 1),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 100,
                  child: Image.asset("images/path_logo.png"),
                ),
                const Text(
                  "Beautiful, Private Sharing",
                  style: TextStyle(color: Color.fromARGB(255, 250, 141, 110)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                          onPressed: () => {},
                          child:
                              const Text("Maria caracola, yo te hago la ola"))
                    ],
                  ),
                )
              ],
            )
          ]),
    );
  }
}
