import 'package:flutter/material.dart';

class LastAButton extends StatelessWidget {
  final String name;
  final IconData? icon;
  final VoidCallback? onTap;

  const LastAButton({super.key, required this.name, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap ?? () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black87,
        backgroundColor: Colors.transparent,
        side: BorderSide(color: Color(0xFFD9CFC0), width: 1),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        overlayColor: Colors.transparent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 16, color: Colors.black87),
            const SizedBox(width: 6),
          ],
          Text(
            name,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
