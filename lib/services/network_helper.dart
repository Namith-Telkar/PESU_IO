import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper{
  NetworkHelper();

  static Future<String> getMeowFact() async{
    var url = Uri.parse('https://meowfacts.herokuapp.com');
    var response = await http.get(url);
    Map<String, dynamic> responseObject = await json.decode(response.body);
    print(responseObject['data'][0]);
    return responseObject['data'][0];
  }
}