import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String name;
  final IconData? icon;
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.name,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        backgroundColor: const Color(0xFFF5F1E8), // cream background
        side: const BorderSide(
          color: Color(0xFFD9CFC0), // subtle border
          width: 1,
        ),
        shape: const StadiumBorder(), // pill shape instead of rounded rectangle
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.deepOrange, size: 22),
          const SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
