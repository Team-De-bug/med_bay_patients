import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiKey = '2d77c9066846b4df7ccbe751e9adf1a8210e4145';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      'Authorization': 'Token $apiKey',
    });

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
