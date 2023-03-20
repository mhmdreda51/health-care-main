import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: AppColors.buttonGradient,
          ),
        ),
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.buttonGradient,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
