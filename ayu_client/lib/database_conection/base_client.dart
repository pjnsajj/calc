import 'package:http/http.dart';

const String baseUrl = 'http://192.168.203.12/unf_akkaz/ws/ExchangeMobile.1cws';

class BaseClient {
  var client = http.Client();
  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Nerf efjervmerjkmkeeklcmkedce=',
      'api_key': '1jl2hekvgi1dvkbhjln1knd1ndj',
    };
   var response = await client.get(url, headers: _headers);
   if (response.statusCode ==200) {
     return response.body;
   }
   else {

   }
  }

  Future<dynamic> post(String api) async {}

  Future<dynamic> put(String api) async {}

  Future<dynamic> delete(String api) async {}
}