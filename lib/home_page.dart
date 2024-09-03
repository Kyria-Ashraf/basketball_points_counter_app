import 'package:basketball_points_counter_app/cubit/basketball_cubit.dart';
import 'package:basketball_points_counter_app/cubit/basketball_states.dart';
import 'package:basketball_points_counter_app/team_A.dart';
import 'package:basketball_points_counter_app/team_B.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BasketballCubit>(
      create: (context) => BasketballCubit(),
      child: BlocConsumer<BasketballCubit, BasketballStates>(
        listener: (context, state) {},
        builder: (context, state) => Expanded(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                "Points Counter",
                style: TextStyle(color: Colors.white),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TeamA(),
                    SizedBox(
                      height: 480,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 2,
                        width: 2,
                        indent: 35,
                      ),
                    ),
                    TeamB()
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(35),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: const Size(150, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                  ),
                  onPressed: () {
                    BasketballCubit.get(context).reset();
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
