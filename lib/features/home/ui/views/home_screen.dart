import 'package:doc/features/home/ui/views/widgets/find_nearby.dart';
import 'package:doc/features/home/ui/views/widgets/home_top_appBar.dart';
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
              SizedBox(
                height: 16.h,
              ),
              const FindNearByWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
