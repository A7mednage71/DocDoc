import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:doc/features/home/ui/views/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsListViewBlocbuilder extends StatelessWidget {
  const DoctorsListViewBlocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is DoctorsSuccess || current is DoctorsFailure;
      },
      builder: (context, state) {
        return state.maybeWhen(
          doctorsFailure: (error) {
            return const SizedBox.shrink();
          },
          doctorsSuccess: (doctorsList) {
            return DoctorsListView(
              doctors: doctorsList,
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
