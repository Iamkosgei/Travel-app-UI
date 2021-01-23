import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/models/discover.dart';
import 'package:travel_app/ui/widgets/place_details.dart';
import 'package:travel_app/ui/widgets/primary_button.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_content.dart';
import 'package:travel_app/utils/app_resources.dart';

class DetailsPage extends StatelessWidget {
  final DiscoverItem discoverItem;

  const DetailsPage({Key key, @required this.discoverItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(discoverItem.imageBg),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 16, 16, 20),
                      child: Column(
                        children: [
                          Text(
                            discoverItem.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(AppResources.pinIcon,
                                  semanticsLabel: 'Acme Logo'),
                              Text(
                                discoverItem.location.toUpperCase(),
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          child: Container(
                            margin: EdgeInsets.only(top: 34),
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(20, 16, 16, 20),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discover",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  AppContent.desc,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textGrey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PlaceDetails(
                                      title: "PRICE",
                                      measure: "\$350",
                                      quantity: "Person",
                                    ),
                                    PlaceDetails(
                                      title: "RATING",
                                      measure: "4.5",
                                      quantity: "5",
                                    ),
                                    PlaceDetails(
                                      title: "DURATION",
                                      measure: "3",
                                      quantity: "hours",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                PrimaryButton(),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 74,
                            width: 74,
                            margin: EdgeInsets.only(right: 16.0),
                            child: Card(
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(74),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Icon(
                                Icons.favorite,
                                color: AppColors.orange,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
