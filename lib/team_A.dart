import 'package:basketball_points_counter_app/cubit/basketball_cubit.dart';
import 'package:flutter/material.dart';

class TeamA extends StatelessWidget {
  const TeamA({super.key});

  @override
  Widget build(BuildContext context) {
    int teamA = BasketballCubit.get(context).teamApoints;
    return Column(
      children: [
        const Text(
          "Team A",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        Text(
          '$teamA',
          style: const TextStyle(
            fontSize: 150,
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            fixedSize: const Size(165, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
          ),
          onPressed: () {
            BasketballCubit.get(context).increment(1, true);
            // teamAPoints += 1;
            // setState(() {});
          },
          child: const Text(
            "Add 1 Point",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            fixedSize: const Size(165, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
          ),
          onPressed: () {
            BasketballCubit.get(context).increment(2, true);
            // teamAPoints += 2;
            // setState(() {});
          },
          child: const Text(
            "Add 2 Points",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            fixedSize: const Size(165, 50),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
          ),
          onPressed: () {
            BasketballCubit.get(context).increment(3, true);
            // teamAPoints += 3;
            // setState(() {});
          },
          child: const Text(
            "Add 3 Points",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
