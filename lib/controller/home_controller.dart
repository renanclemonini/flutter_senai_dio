import 'package:flutter/material.dart';
import 'package:projeto_flutter/model/endereco_model.dart';
import 'package:projeto_flutter/service/api_service.dart';

class HomeController extends ChangeNotifier {
  var apiService = ApiService();

  ValueNotifier<EnderecoModel?> endereco = ValueNotifier(null);
  ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<void> buscaEndereco({required String cep}) async {
    isLoading.value = true;

    EnderecoModel? enderecoModel = await apiService.getEndereco(cep: cep);

    if (enderecoModel != null) {
      endereco.value = enderecoModel;
      isLoading.value = false;
      notifyListeners(); 
    } else {
      endereco.value = null;
      isLoading.value = false;
      notifyListeners(); 
    }
  }
}
