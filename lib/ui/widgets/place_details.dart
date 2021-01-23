import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_colors.dart';

class PlaceDetails extends StatelessWidget {
  final String title, quantity, measure;

  const PlaceDetails({Key key, this.title, this.quantity, this.measure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(measure,
                  style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  )),
              SizedBox(
                height: 20,
              ),
              Text("/" + quantity,
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
