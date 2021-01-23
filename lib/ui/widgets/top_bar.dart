import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/utils/app_resources.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppResources.menu, semanticsLabel: 'Acme Logo'),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset("assets/images/person.png"))
        ],
      ),
    );
  }
}
