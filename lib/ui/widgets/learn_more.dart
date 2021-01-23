import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_content.dart';

class LearnMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: AppContent.learnMore.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppContent.learnMore[index]),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: SizedBox()),
              ),
            );
          }),
    );
  }
}
