import 'package:doc/core/helpers/navigation_extention.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/core/widgets/app_custom_button.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/ui/manager/cubit/login_cubit.dart';
import 'package:doc/features/login/ui/manager/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Failure || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            );
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeView);
          },
          failure: (errormessage) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.black,
                content: Text(errormessage),
              ),
            );
          },
        );
      },
      child: AppCustomButton(
        onPressed: () {
          validate(context);
        },
        text: "Login",
      ),
    );
  }

  void validate(BuildContext context) {
    if (context.read<LoginCubit>().key.currentState!.validate()) {
      context.read<LoginCubit>().login(
            loginRequestBody: LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
