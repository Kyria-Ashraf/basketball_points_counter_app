import 'package:basketball_points_counter_app/cubit/basketball_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasketballCubit extends Cubit<BasketballStates> {
  BasketballCubit() : super(BasketballInitialState());

  int teamApoints = 0;
  int teamBpoints = 0;
  static BasketballCubit get(BuildContext context) => BlocProvider.of(context);
  void increment(int point, bool isteamA) {
    if (isteamA) {
      teamApoints += point;
      emit(
        TeamAState(),
      );
    } else {
      teamBpoints += point;
      emit(
        TeamBState(),
      );
    }
  }

  void reset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(
      ResetState(),
    );
  }
}
