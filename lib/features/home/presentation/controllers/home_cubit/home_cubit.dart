import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_application/features/home/presentation/controllers/home_cubit/home_states.dart';

/// cubit for home screen
class HomeCubit extends Cubit<HomeStates> {
  /// initial color for home screen
  Color homeColor = const Color(0xFFFFFFFF);

  /// make cubit start with initial state
  HomeCubit() : super(HomeInitialState());

  /// make cubit shared
  static HomeCubit get(BuildContext context) => BlocProvider.of(context);

  ///  method for change home screen color randomly
  void changeColorRandomly() {
    homeColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    emit(HomeChangeScreenBackgroundColorState());
  }
}
