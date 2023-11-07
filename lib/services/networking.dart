import 'package:http_requests/http_requests.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async
  {
    http.Response response = await http.HttpRequests.get(
        url);
    if (response.statusCode == 200) {
      String data = response.content;
      return jsonDecode(data);
    }
    else {
      return response.statusCode;
    }
  }
}