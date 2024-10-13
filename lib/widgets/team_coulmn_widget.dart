import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/widgets/points_button.dart';

class TeamColumnWidget extends StatelessWidget {
  final String teamName;
  final int teamPoints;  // Receive the updated team points as a parameter

  const TeamColumnWidget({
    required this.teamName,
    required this.teamPoints,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(fontSize: 32),
        ),
        Text(
          '$teamPoints',  // Display the updated team points
          style: const TextStyle(fontSize: 120),
        ),
        PointButton(
          label: 'Add 1 point',
          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncrement(
            team: teamName, 
            buttonNum: 1,
          ),
        ),
        const SizedBox(height: 12),
        PointButton(
          label: 'Add 2 points',
          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncrement(
            team: teamName, 
            buttonNum: 2,
          ),
        ),
        const SizedBox(height: 12),
        PointButton(
          label: 'Add 3 points',
          onPressed: () => BlocProvider.of<CounterCubit>(context).teamIncrement(
            team: teamName, 
            buttonNum: 3,
          ),
        ),
      ],
    );
  }
}
