import 'dart:developer';

import 'package:dio/dio.dart';

class PlantId {
  static testeApi() async {
    var http = Dio();
    var response = await http.post(
      "https://plant.id/api/v3/identification",
      options: Options(headers: {
        'Api-Key': 'TjoS3FUeRVk27FLv8eu5JdXllXYae7wncPADJ9xm6TyaGUUb1O'
      },
      )
    );

    if (response.statusCode == 200) {
      print("deu certo");
    } else {
      print("Não deu");
    }
  }
}