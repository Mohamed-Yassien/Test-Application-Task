import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/core/app_strings.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_cubit.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_states.dart';
import 'package:test_application/features/home/presentation/screens/widgets/home_body.dart';

/// home screen
class HomeScreen extends StatelessWidget {
  /// home screen constructor
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          final cubit = HomeCubit.get(context);

          /// scaffold that hold the screen ui
          return Scaffold(
            backgroundColor: cubit.homeColor,
            appBar: AppBar(
              title:const Text(
                AppStrings.appBarTitle,
              ),
            ),
            body: InkWell(
              onTap: () => cubit.changeColorRandomly(),
              child: const HomeBody(),
            ),
          );
        },
      ),
    );
  }
}
