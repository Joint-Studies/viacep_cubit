import 'package:viacep_cubit/features/cep/data/datasources/remote_datasource.dart';
import 'package:viacep_cubit/features/cep/domain/entities/cep.dart';
import 'package:viacep_cubit/features/cep/domain/repositories/get_cep_repository.dart';

class GetCepRepositoryImpl implements GetCepRepository {
  final CepRemoteDatasource remoteDatasource;

  GetCepRepositoryImpl(this.remoteDatasource);

  @override
  Future<Cep> getCep() async {
    final response = await remoteDatasource.getCep();
    return response.toEntity();
  }
}
