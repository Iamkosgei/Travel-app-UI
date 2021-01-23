import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_content.dart';

class Activities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  Container(
                    height: 34,
                    child: SvgPicture.asset(AppContent.activities[index].image,
                        semanticsLabel: AppContent.activities[index].name),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppContent.activities[index].name.toUpperCase(),
                    style: TextStyle(
                      color: AppColors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 24,
              ),
          itemCount: AppContent.activities.length),
    );
  }
}
