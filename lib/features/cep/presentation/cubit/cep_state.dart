part of 'cep_cubit.dart';

abstract class CepState extends Equatable {
  const CepState();

  @override
  List<Object> get props => [];
}

class CepInitial extends CepState {}

class CepLoading extends CepState {}

class CepLoaded extends CepState {
  final Cep cep;

  const CepLoaded(this.cep);
}
