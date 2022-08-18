import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Icon icon;

  const CustomButton({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            minimumSize: const Size(300, 60)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: icon,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                label,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
