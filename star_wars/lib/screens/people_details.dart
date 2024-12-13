import 'package:flutter/material.dart';
import 'package:star_wars/models/people.dart';

class PeopleDetails extends StatefulWidget {
  final People people;
  const PeopleDetails({super.key, required this.people});

  @override
  State<PeopleDetails> createState() => _PeopleDetailsState();
}

class _PeopleDetailsState extends State<PeopleDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                alignment: Alignment.center,
                child: Text(
                  widget.people.name!.toLowerCase(),
                  style: const TextStyle(
                      color: Colors.amber, fontFamily: "JediFont"),
                ),
              ),
              background: Image(
                  image: NetworkImage(
                      "https://starwars-visualguide.com/assets/img/characters/${_searchIdByUrl(widget.people.url!)}.jpg"),
                  fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }

  String _searchIdByUrl(String url) {
    RegExp regExp = RegExp(r"people/(\d+)/");
    final match = regExp.firstMatch(url);
    return match!.group(1)!;
  }
}
