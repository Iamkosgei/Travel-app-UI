import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_content.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: AppContent.categories.length,
          itemBuilder: (context, index) {
            return Text(
              AppContent.categories[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: index == 0 ? AppColors.orange : AppColors.grey,
              ),
            );
          }),
    );
  }
}
