import 'package:flutter/material.dart';

class PointButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PointButton({required this.label, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size(150, 60),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}