import 'package:get_it/get_it.dart';
import 'package:viacep_cubit/features/cep/data/datasources/remote_datasource.dart';
import 'package:viacep_cubit/features/cep/data/repositories/get_cep_repository_impl.dart';
import 'package:viacep_cubit/features/cep/domain/repositories/get_cep_repository.dart';
import 'package:viacep_cubit/features/cep/presentation/cubit/cep_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton<CepRemoteDatasource>(CepRemoteDatasourceImpl());

  sl.registerSingleton<GetCepRepository>(GetCepRepositoryImpl(sl()));

  sl.registerSingleton(CepCubit(sl()));
}
