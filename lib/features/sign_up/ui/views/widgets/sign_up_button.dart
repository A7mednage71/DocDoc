import 'package:doc/core/helpers/navigation_extention.dart';
import 'package:doc/core/routing/routes.dart';
import 'package:doc/core/widgets/app_custom_button.dart';
import 'package:doc/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc/features/sign_up/ui/manager/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
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
            context.pushNamed(Routes.loginView);
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
        text: "Sign Up",
        onPressed: () {
          validate(context);
        },
      ),
    );
  }

  void validate(BuildContext context) {
    if (context.read<SignUpCubit>().key.currentState!.validate()) {
      context.read<SignUpCubit>().signUp(
            signUpRequestBody: SignUpRequestBody(
              name: context.read<SignUpCubit>().nameController.text,
              email: context.read<SignUpCubit>().emailController.text,
              phone: context.read<SignUpCubit>().phoneController.text,
              password: context.read<SignUpCubit>().passwordController.text,
              confirmPassword: context
                  .read<SignUpCubit>()
                  .passwordConfirmationController
                  .text,
              gender: 0,
            ),
          );
    }
  }
}
