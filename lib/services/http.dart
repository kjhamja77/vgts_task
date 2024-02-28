import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:vgts_assessment/model/test_model.dart';
import 'dart:convert' as convert;

class RouteRepository{

  static Future<dynamic> fetchRoutes()async{
    String url = 'https://firebasestorage.googleapis.com/v0/b/jill-soap-6a1ac.appspot.com/o/maps.json?alt=media&token=bfd28b0f-06d7-4d25-8d45-e218466c7449';
    try {
      Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = convert.jsonDecode(response.body);
        final route = test.fromJson(data);
        return route;
      }
      else {
        print('Failed fetching this route data');
      }
    } catch (e) {
      print('Error Occured on ${e.toString()}');
    }
  }
}