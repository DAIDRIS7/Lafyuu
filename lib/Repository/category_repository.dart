import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:lafyuu/Model/categoryModel.dart';

Future<List<CategoryModel>> fetchCategory() async {
  final response = await http.get(
    Uri.parse(
      "https://mocki.io/v1/e5775744-06ba-4306-b6f6-93055de3c2d5",
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
 getProductsByCategory() async {
  final response = await Dio().get(
    "https://dummyjson.com/products/category/groceries",
  );
listOfProductsByCategory= Product.fromJson(response.data);
return  listOfProductByCategory;
    
}
