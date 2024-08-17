import 'package:doc/core/helpers/app_constants.dart';
import 'package:doc/core/helpers/secure_storage_helper.dart';
import 'package:doc/features/home/ui/views/widgets/doctor_custom_row.dart';
import 'package:doc/features/home/ui/views/widgets/doctors_list_view_blocBuilder.dart';
import 'package:doc/features/home/ui/views/widgets/find_nearby.dart';
import 'package:doc/features/home/ui/views/widgets/home_top_appBar.dart';
import 'package:doc/features/home/ui/views/widgets/speciality_list_view_blocBuilder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const HomeTopAppBar(),
              SizedBox(height: 16.h),
              const FindNearByWidget(),
              SizedBox(height: 24.h),
              DoctorCustomRowWidget(
                text: "Doctor Speciality",
                onPressed: () async {
                  await SecureStorageHelper.removeSecuredData(
                      SharedPrefKeys.userToken);
                },
              ),
              SizedBox(height: 16.h),
              const SpecialityListViewBlocBuilder(),
              SizedBox(height: 10.h),
              const DoctorsListViewBlocbuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
