abstract class CounterState {
  final int teamAPoints;
  final int teamBPoints;

  CounterState({required this.teamAPoints, required this.teamBPoints});
}

final class CounterInitial extends CounterState {
  CounterInitial() : super(teamAPoints: 0, teamBPoints: 0);  
}

final class CounterAState extends CounterState {
  CounterAState({required int teamAPoints, required int teamBPoints})
      : super(teamAPoints: teamAPoints, teamBPoints: teamBPoints);
}

final class CounterBState extends CounterState {
  CounterBState({required int teamAPoints, required int teamBPoints})
      : super(teamAPoints: teamAPoints, teamBPoints: teamBPoints);
}
