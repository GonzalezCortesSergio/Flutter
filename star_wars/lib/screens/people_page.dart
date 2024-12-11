import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:star_wars/models/people_list_response.dart';
import 'package:http/http.dart' as http;

class PeoplePage extends StatefulWidget {
  const PeoplePage({super.key});

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  late Future<PeopleListResponse> peopleResponse;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    peopleResponse = fetchPeopleList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("People"),
      ),
      body: FutureBuilder<PeopleListResponse>(
          future: peopleResponse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return _buildPeopleList(snapshot.data!);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return const CircularProgressIndicator();
          }),
    );
  }

  Future<PeopleListResponse> fetchPeopleList() async {
    final response = await http.get(Uri.parse('https://swapi.dev/api/people'));

    if (response.statusCode == 200) {
      return PeopleListResponse.fromJson(response.body);
    } else {
      throw Exception("Failed to load people");
    }
  }

  Widget _buildPeopleList(PeopleListResponse peopleResponse) {
    return ListView.builder(
        itemCount: peopleResponse.results!.length,
        itemBuilder: (context, index) {
          return Text(peopleResponse.results![index].name!);
        });
  }
}
