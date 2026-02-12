import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:doc/features/home/ui/views/widgets/dector_speciality_list_shimmer.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:doc/features/home/ui/views/widgets/doctors_list_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            return Expanded(
              child: Column(
                children: [
                  const SpecialityListViewLoadingShimmer(),
                  SizedBox(height: 10.h),
                  const DoctorsListShimmer()
                ],
              ),
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
