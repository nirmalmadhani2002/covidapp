import 'dart:convert';
import 'package:covidapp/globals/global.dart';
import 'package:covidapp/model/models.dart';
import 'package:http/http.dart' as http;

class CovidHelpers{

  CovidHelpers._();

  static CovidHelpers covidHelpers = CovidHelpers._();

  String baseAPI = "https://disease.sh/v3/covid-19/";

  Future<Covid?> getAllData() async {
    String api = baseAPI + Global.endpoint;
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      Map decodeData = jsonDecode(data.body);

      Covid  allData = Covid.fromMap(data: decodeData);

      return allData;
    }
    return null;
  }

  Future<List<Countries>?> nameData() async {
    String api = "https://laravel-world.com/api/countries";
    http.Response data = await http.get(Uri.parse(api));
    String d = data.body;
    if (data.statusCode == 200) {
      Map decodeData = jsonDecode(d);
      List data = decodeData["data"];
      List<Countries>allData = data.map((e) => Countries(name: e)).toList();
      print(allData);
      return allData;
    }
    return null;
  }

}