import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_cubit.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_states.dart';
import 'package:test_application/features/home/presentation/screens/widgets/home_body.dart';

import '../../../../core/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeStates>(
        builder: (context, state) {
          var cubit = HomeCubit.get(context);
          return Scaffold(
            backgroundColor: cubit.homeColor,
            appBar: AppBar(
              title: Text(
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
