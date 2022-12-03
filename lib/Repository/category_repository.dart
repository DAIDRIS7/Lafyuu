import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lafyuu/Model/categoryModel.dart';

Future<List<CategoryModel>> fetchCategory() async {
  final response = await http.get(
    Uri.parse(
      "https://api.escuelajs.co/api/v1/categories/",
    ),
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    final list = jsonDecode(response.body);
    return List<CategoryModel>.from(list.map((e) {
      return CategoryModel.fromjson(e);
    }));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Category');
  }
}

////////////////
