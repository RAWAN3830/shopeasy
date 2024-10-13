import 'package:flutter/cupertino.dart';

import '../Api_service/api_calling.dart';
import '../../domain/model_class.dart';

class ApiProvider with ChangeNotifier{
  late ProductModel productDetails;

 Future<void> callProduct() async{
   productDetails = await ApiCalling.LoadApiData();
   notifyListeners();
 }
}