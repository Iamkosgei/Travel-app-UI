import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/ui/pages/details_page.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_content.dart';
import 'package:travel_app/utils/app_resources.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
          itemCount: AppContent.discoverItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsPage(
                            discoverItem: AppContent.discoverItems[index])));
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage(AppContent.discoverItems[index].image),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppContent.discoverItems[index].name,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(AppResources.pinIcon,
                                  semanticsLabel: 'Acme Logo'),
                              Text(
                                AppContent.discoverItems[index].location,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
