import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/model_class.dart';

class ApiCalling{
  static Future<ProductModel> LoadApiData() async{
    http.Response res = await http.get(Uri.parse('https://dummyjson.com/products'));
    var decode = jsonDecode(res.body);
    return ProductModel.fromJson(decode);
  }
}