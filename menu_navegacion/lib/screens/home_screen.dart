import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:menu_navegacion/models/people_list_response/people_list_response.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FutureBuilder()
    return const Placeholder();
  }

  Future<PeopleListResponse> fetchPeople() {
    return http.get(Uri.parse("https://api.themoviedb.org/3/person/popular"),
        headers: {
          "Authorization":
              "Bearer "
        }) as Future<PeopleListResponse>;
  }
}
