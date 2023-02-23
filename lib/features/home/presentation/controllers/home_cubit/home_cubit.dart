import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  Color homeColor = const Color(0xFFFFFFFF);

  changeColorRandomly() {
    homeColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    emit(HomeChangeScreenBackgroundColorState());
  }
}
