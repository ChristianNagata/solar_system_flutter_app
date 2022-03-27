import 'dart:convert';

import 'package:http/http.dart';
import '../models/body.dart';

class HttpService {
  final String url = 'https://api.le-systeme-solaire.net/rest/bodies/';

  Future<List<Body>> getBodies() async {
    print('entrou em getBodies()');
    Response res = await get(Uri.parse(url));

    if (res.statusCode == 200) {

      print('status == 200');
      List<dynamic> data = jsonDecode(res.body)['bodies'];
      List<Body> bodies = data.map((dynamic e) => Body.fromJson(e)).toList();
      print('retornando bodies');

      return bodies;


    } else {
      throw 'Could not get data';
    }

  }

}