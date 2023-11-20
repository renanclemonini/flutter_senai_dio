import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:projeto_flutter/model/endereco_model.dart';
import 'package:projeto_flutter/repositories/busca_cep_repository.dart';

class ApiService {
  Future<EnderecoModel?> getEndereco({required String cep}) async {
    try {
      var response = await Dio().get(BuscaCep.urlBase(cep));

      if (response.statusCode == 200) {
        return EnderecoModel.fromJson(response.data);
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }
}
