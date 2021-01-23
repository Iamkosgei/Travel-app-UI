import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/app_resources.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 34,
            child: SvgPicture.asset(
              AppResources.home,
            ),
          ),
          Container(
            height: 34,
            child: SvgPicture.asset(
              AppResources.heart,
            ),
          ),
          Container(
            height: 34,
            child: SvgPicture.asset(
              AppResources.account,
            ),
          ),
        ],
      ),
    );
  }
}
