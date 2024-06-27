import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlightment = Alignment.topRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.purple({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.indigoAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    startAlignment = Alignment.topCenter;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlightment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.colors,{super.key});

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     startAlignment = Alignment.topCenter;
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: colors,
//             begin: startAlignment,
//             end: endAlightment,
//           ),
//         ),
//         child: const Center(
//           child: StyledText('hello Egss!'),
//         ));
//   }
// }
