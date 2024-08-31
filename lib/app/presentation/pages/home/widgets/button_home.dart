import 'package:flutter/material.dart';
import 'package:project_johndev/app/presentation/global/colors/colors.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 50),
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: const Text('View Projects',
                style: TextStyle(color: Colors.white))),
        const SizedBox(
          width: 20,
        ),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(color: primaryColor))),
            child: Text('Contact', style: TextStyle(color: primaryColor))),
      ],
    );
  }
}
