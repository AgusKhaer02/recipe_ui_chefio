import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:unicons/unicons.dart';

class DetailRecipeScreen extends StatefulWidget {
  const DetailRecipeScreen({Key? key}) : super(key: key);

  @override
  _DetailRecipeScreenState createState() => _DetailRecipeScreenState();
}

class _DetailRecipeScreenState extends State<DetailRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Image.network(
                "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2014%2F07%2F10%2Fpepperoni-pizza-ck-x.jpg&q=60",
                height: 350,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: DraggableScrollableSheet(
                initialChildSize: 0.75,
                minChildSize: 0.60,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              "assets/icons/ic_home_indicator.svg",
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Pizza",
                            style: ConstTxtStyle.heading1(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "Food",
                                style: ConstTxtStyle.paragraph2(
                                  textColor: ConstColor.secondaryText,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset("assets/icons/dot.svg"),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                ">60 mins",
                                style: ConstTxtStyle.paragraph2(
                                  textColor: ConstColor.secondaryText,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://pyxis.nymag.com/v1/imgs/d74/c8a/46ba077160d7491f10a466a72982dfbf8e-13-zuck-stream.rsquare.w330.jpg",
                                ),
                                radius: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Text(
                                  "Mark Zuck",
                                  style: ConstTxtStyle.heading3(),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: ConstColor.primary,
                                    child: SvgPicture.asset(
                                        "assets/icons/ic_heart.svg"),
                                    radius: 18,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "273 Likes",
                                    style: ConstTxtStyle.heading3(),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(thickness: 2, color: Colors.black12),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Description",
                            style: ConstTxtStyle.heading2(),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients, which is then baked at a high temperature, traditionally in a wood-fired oven.",
                            style: ConstTxtStyle.paragraph2(
                                textColor: ConstColor.secondaryText,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(thickness: 2, color: Colors.black12),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Ingredients",
                            style: ConstTxtStyle.heading2(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFAFFFDF),
                                  radius: 12,
                                  child: Icon(
                                    UniconsLine.check,
                                    color: ConstColor.primary,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "4 Eggs",
                                  style: ConstTxtStyle.paragraph1(),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFFAFFFDF),
                                  radius: 12,
                                  child: Icon(
                                    UniconsLine.check,
                                    color: ConstColor.primary,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "4 Eggs",
                                  style: ConstTxtStyle.paragraph1(),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Divider(thickness: 2, color: Colors.black12),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Steps",
                            style: ConstTxtStyle.heading2(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: ConstColor.mainText,
                                  radius: 14,
                                  child: Text("1", style: ConstTxtStyle.small(textColor: Colors.white),),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Add the flour, salt, sugar, and olive oil, and using the mixing paddle attachment, mix on low speed for a minute. Then replace the mixing paddle with the dough hook attachment.Knead the pizza dough on low to medium speed using the dough hook about 7-10 minutes.If you don't have a mixer, you can mix the ingredients together and knead them by hand.The dough should be a little sticky, or tacky to the touch. If it's too wet, sprinkle in a little more flour. ",
                                        style: ConstTxtStyle.paragraph2(),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          "https://sugarspunrun.com/wp-content/uploads/2018/05/Homemade-Pizza-Dough-Recipe-1-of-1-14.jpg",
                                          height: 150,
                                          width: 250,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
