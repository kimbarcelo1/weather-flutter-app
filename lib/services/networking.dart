import 'dart:convert';
import 'package:http/http.dart' as httpx;

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    httpx.Response response = await httpx.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
