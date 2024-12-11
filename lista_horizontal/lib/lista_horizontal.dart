import 'package:flutter/material.dart';

class ListaHorizontal extends StatelessWidget {
  const ListaHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    String photoUrl2 =
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Golshifteh_Farahani_at_the_2024_Toronto_International_Film_Festival_4_%28cropped%29.jpg/1200px-Golshifteh_Farahani_at_the_2024_Toronto_International_Film_Festival_4_%28cropped%29.jpg";
    String photoUrl1 =
        "https://images.mubicdn.net/images/cast_member/388391/cache-165255-1471493797/image-w856.jpg";

    return Scaffold(
        body: Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 100, left: 50, right: 100),
          child: const Column(
            children: [
              Text("Best Iranian Actors and Actresses",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "Gilroy-Extra")),
              Padding(
                padding: EdgeInsets.only(right: 150, top: 8),
                child: Text(
                  "March 2020",
                  style: TextStyle(color: Colors.black26),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          )),
    ]));
  }
}
