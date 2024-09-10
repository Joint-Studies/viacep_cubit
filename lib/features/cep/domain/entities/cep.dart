import 'package:equatable/equatable.dart';

class Cep extends Equatable {
  final String? cep;
  final String? logradouro;
  final String? complemento;
  final String? unidade;
  final String? bairro;
  final String? localidade;
  final String? uf;
  final String? estado;
  final String? regiao;
  final String? ibge;
  final String? gia;
  final String? ddd;

  const Cep({
    this.cep,
    this.logradouro,
    this.complemento,
    this.unidade,
    this.bairro,
    this.localidade,
    this.uf,
    this.estado,
    this.regiao,
    this.ibge,
    this.gia,
    this.ddd,
  });

  @override
  List<Object?> get props {
    return [
      cep,
      logradouro,
      complemento,
      unidade,
      bairro,
      localidade,
      uf,
      estado,
      regiao,
      ibge,
      gia,
      ddd,
    ];
  }
}
