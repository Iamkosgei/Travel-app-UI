import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 53,
      decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          "Book Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
