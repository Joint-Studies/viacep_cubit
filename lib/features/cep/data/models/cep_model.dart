import 'package:equatable/equatable.dart';
import 'package:viacep_cubit/features/cep/domain/entities/cep.dart';

class CepModel extends Equatable {
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

  const CepModel({
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

  factory CepModel.fromJson(Map<String, dynamic> json) {
    return CepModel(
      cep: json['cep'] != null ? json['cep'] as String : null,
      logradouro: json['logradouro'] != null ? json['logradouro'] as String : null,
      complemento: json['complemento'] != null ? json['complemento'] as String : null,
      unidade: json['unidade'] != null ? json['unidade'] as String : null,
      bairro: json['bairro'] != null ? json['bairro'] as String : null,
      localidade: json['localidade'] != null ? json['localidade'] as String : null,
      uf: json['uf'] != null ? json['uf'] as String : null,
      estado: json['estado'] != null ? json['estado'] as String : null,
      regiao: json['regiao'] != null ? json['regiao'] as String : null,
      ibge: json['ibge'] != null ? json['ibge'] as String : null,
      gia: json['gia'] != null ? json['gia'] as String : null,
      ddd: json['ddd'] != null ? json['ddd'] as String : null,
    );
  }

  Cep toEntity() => Cep(
        cep: cep,
        logradouro: logradouro,
        complemento: complemento,
        unidade: unidade,
        bairro: bairro,
        localidade: localidade,
        uf: uf,
        estado: estado,
        regiao: regiao,
        ibge: ibge,
        gia: gia,
        ddd: ddd,
      );

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
