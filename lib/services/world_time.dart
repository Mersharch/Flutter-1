// ignore_for_file: unused_local_variable

import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location = ''; //location name for ui
  String time = ''; // time for location
  String flag = ''; //flag image url
  String url = ''; // location url for api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    Response response =
        await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from data
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    // print(dateTime);
    // print(offset);

    // create Datetime object
    DateTime now = DateTime.parse(data['datetime']);
    now = now.add(Duration(hours: int.parse(offset)));

    // set time property
    time = now.toString();
  }
}
