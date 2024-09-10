import 'package:dio/dio.dart';
import 'package:viacep_cubit/features/cep/data/models/cep_model.dart';

final dio = Dio();

abstract class CepRemoteDatasource {
  Future<CepModel> getCep();
}

class CepRemoteDatasourceImpl implements CepRemoteDatasource {
  @override
  Future<CepModel> getCep() async {
    final response = await dio.get('https://viacep.com.br/ws/05724005/json/');
    try {
      return CepModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
