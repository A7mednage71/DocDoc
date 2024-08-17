import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityListViewBlocBuilder extends StatelessWidget {
  const SpecialityListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is SpecializationLoading ||
            current is SpecializationFailure ||
            current is SpecializationSuccess;
      },
      builder: (context, state) {
        return state.maybeWhen(
          specializationloading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          specializationFailure: (error) {
            return const SizedBox.shrink();
          },
          specializationSuccess: (data) {
            return DoctorSpecialityListView(allSpecializationData: data);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
