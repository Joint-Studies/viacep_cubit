import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:viacep_cubit/features/cep/domain/entities/cep.dart';

import '../../domain/repositories/get_cep_repository.dart';

part 'cep_state.dart';

class CepCubit extends Cubit<CepState> {
  final GetCepRepository getCepRepository;

  CepCubit(this.getCepRepository) : super(CepInitial());

  Future<void> getCepFromApi() async {
    emit(CepLoading());

    var response = await getCepRepository.getCep();

    emit(CepLoaded(response));
  }
}
