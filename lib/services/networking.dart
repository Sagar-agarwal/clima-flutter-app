import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String url;

  NetworkHelper(this.url) {}

  Future getData() async {
    Uri weatherURL = Uri.parse(this.url);
    http.Response response = await http.get(weatherURL);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return response.statusCode;
  }
}
