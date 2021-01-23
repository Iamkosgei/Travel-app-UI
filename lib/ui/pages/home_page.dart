import 'package:flutter/material.dart';
import 'package:travel_app/ui/widgets/activities.dart';
import 'package:travel_app/ui/widgets/bottom_bar.dart';
import 'package:travel_app/ui/widgets/categories.dart';
import 'package:travel_app/ui/widgets/discover.dart';
import 'package:travel_app/ui/widgets/learn_more.dart';
import 'package:travel_app/ui/widgets/top_bar.dart';
import 'package:travel_app/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 16, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Categories(),
                Discover(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Discover",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Activities(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Learn More",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                LearnMore(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
