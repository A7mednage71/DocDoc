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
        return state.whenOrNull(
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
                  DoctorSpecialityListView(
                      allSpecializationData: data.allSpecializationData),
                  SizedBox(height: 24.h),
                  RecomendationDoctorListItemListView(
                    doctors: data.allSpecializationData![0].doctors,
                  ),
                ],
              ),
            );
          },
        ) ??
            const SizedBox.shrink(); 
      },
    );
  }
}



  // return state.maybeWhen(
        //   loading: () {
        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        //   failure: (error) {
        //     return const SizedBox.shrink();
        //   },
        //   success: (data) {
        //     return Expanded(
        //       child: Column(
        //         children: [
        //           DoctorSpecialityListView(
        //               allSpecializationData: data.allSpecializationData),
        //           SizedBox(height: 24.h),
        //           RecomendationDoctorListItemListView(
        //             doctors: data.allSpecializationData![0].doctors,
        //           ),
        //         ],
        //       ),
        //     );
        //   },
        //   orElse: () {
        //     return const SizedBox.shrink();
        //   },
        // );