import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isSelected;

  const CategoryCard({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: isSelected
                ? Colors.white.withOpacity(0.8)
                : Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
