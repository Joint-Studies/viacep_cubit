import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viacep_cubit/di.dart';
import 'package:viacep_cubit/features/cep/presentation/cubit/cep_cubit.dart';

class CepScreen extends StatelessWidget {
  const CepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => sl.get<CepCubit>()..getCepFromApi(),
        child: BlocBuilder<CepCubit, CepState>(
          builder: (context, state) {
            if (state is CepLoading) {
              return const CircularProgressIndicator();
            }
            if (state is CepLoaded) {
              var entity = state.cep;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(entity.bairro!),
                    Text(entity.cep!),
                    Text(entity.complemento!),
                    Text(entity.estado!),
                  ],
                ),
              );
            }
            return Container(
              color: Colors.amber,
            );
          },
        ),
      ),
    );
  }
}
