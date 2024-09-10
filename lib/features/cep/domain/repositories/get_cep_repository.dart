import 'package:viacep_cubit/features/cep/domain/entities/cep.dart';

abstract class GetCepRepository {
  Future<Cep> getCep();
}
