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
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.white),
                            fixedSize: WidgetStatePropertyAll(Size(250, 50))),
                          child:
                              const Text("Sign Up",
                              style: TextStyle(
                                color: Color.fromARGB(255, 231, 44, 18),
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      const Text(
                        "Already have a Path account?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 251, 150, 127)
                        )
                      ),
                      OutlinedButton(
                        onPressed: () => {}, 
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          fixedSize: const Size(250, 50),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 251, 150, 127)
                          )
                        ),
                        child: const Text("Log In",
                        style: TextStyle(
                          color: Color.fromARGB(255, 251, 150, 127)
                        ))
                        
                        )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 30
                  ),
                  child: const Column(
                    children: [

                      Text("By using Path, you agree to Path's",
                      style: TextStyle(
                        color: Color.fromARGB(255, 251, 150, 127)
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Terms of Use ",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white
                            ),
                          ),
                          Text(
                            "and ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 251, 150, 127)
                            ),
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
    );
  }
}
