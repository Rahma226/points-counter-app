import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:points_counter/cubit/counter_cubit.dart';
import 'package:points_counter/cubit/counter_state.dart';
import 'package:points_counter/widgets/team_coulmn_widget.dart';
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(),
          body: _buildBody(state),
        );
      },
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text(
        'Points Counter',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.orange,
    );
  }

  Widget _buildBody(CounterState state) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Pass updated team points directly from the state
                  TeamColumnWidget(
                    teamName: 'Team A', 
                    teamPoints: state.teamAPoints,
                  ),
                  const SizedBox(
                    height: 450,
                    child: VerticalDivider(thickness: 1),
                  ),
                  TeamColumnWidget(
                    teamName: 'Team B', 
                    teamPoints: state.teamBPoints,
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetPoints();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 60),
                ),
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
