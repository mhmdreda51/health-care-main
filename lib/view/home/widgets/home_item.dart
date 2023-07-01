import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key? key,
    required this.title,
    required this.image,
    this.onTap,
  }) : super(key: key);
  final String title;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColors.deepBlue,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: Image.asset(
                  image,
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.deepBlue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
