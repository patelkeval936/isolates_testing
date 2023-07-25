import 'dart:convert';
import 'package:http/http.dart' as http;

class RequestAssistant {
  ///purpose of below method is to fetch the data from api and give response as future

  static Future<String> requestApiData() async {
    String url =
        'https://sabnzbd.org/tests/internetspeed/50MB.bin';

    http.Response httpResponse = await http.get(Uri.parse(url));

    try {

      print(httpResponse.statusCode);
      ///checks for response success code 200
      if (httpResponse.statusCode == 200) {
        print('response code 200');
        String responseData = httpResponse.body; //json

        // var decodeResponseData = jsonDecode(responseData);
    print('response data is ${httpResponse.bodyBytes.length}');
        return responseData;
      } else {
        return "Error Occurred, Failed. No Response.";
      }
    } catch (exp) {
      return "Error Occurred, Failed. No Response.";
    }
  }
}
