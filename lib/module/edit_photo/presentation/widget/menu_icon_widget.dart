import 'package:flutter/material.dart';

class MenuIconWidget extends StatelessWidget {
  const MenuIconWidget({
    super.key,
    this.onTap,
    required this.icon,
  });

  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        width: 54,
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.5),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
