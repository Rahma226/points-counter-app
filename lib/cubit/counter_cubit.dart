import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttonNum}) {
    if (team == 'Team A') {
      teamAPoints += buttonNum;
      emit(CounterAState(teamAPoints: state.teamAPoints + buttonNum,
        teamBPoints: state.teamBPoints,));
    } else {
      teamBPoints += buttonNum;
      emit(CounterBState(teamAPoints: state.teamAPoints,
        teamBPoints: state.teamBPoints + buttonNum,));
    }
  }
   void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterInitial());
  }
}
