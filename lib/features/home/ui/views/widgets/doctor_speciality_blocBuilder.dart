import 'package:doc/features/home/ui/views/manager/cubit/home_cubit.dart';
import 'package:doc/features/home/ui/views/manager/cubit/home_state.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_speciality_list_view.dart';
import 'package:doc/features/home/ui/views/widgets/recommendation_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListViewBlocBuilder extends StatelessWidget {
  const DoctorSpecialityListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is Loading || current is Failure || current is Success;
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          failure: (error) {
            return const SizedBox.shrink();
          },
          success: (data) {
            return Expanded(
              child: Column(
                children: [
                  const DoctorSpecialityListView(),
                  SizedBox(height: 24.h),
                  const RecomendationDoctorListItemListView(),
                ],
              ),
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
