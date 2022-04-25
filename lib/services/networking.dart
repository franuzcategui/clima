import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String uri;

  NetworkHelper(this.uri);

  Future getData() async {
    var url = Uri.parse(uri);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String body = response.body;
      var data = jsonDecode(body);
      return data;
    }
  }
}
