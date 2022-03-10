import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size scrSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/ic_share.svg"),
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/280x280_RS/6a/d5/15/6ad5153f3ed10471c8670d27525ce9a0.jpg"),
                radius: 60,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Agus Kurniadin K",
            style: ConstTxtStyle.heading1(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              profileSummary(32, "Recipes"),
              profileSummary(782, "Following"),
              profileSummary(1287, "Followers"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                textStyle:
                ConstTxtStyle.paragraph1(textColor: Colors.white),
                primary: ConstColor.primary,
                onPrimary: Colors.white,
                minimumSize: Size(scrSize.width / 1.5, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text("Follow"),
            ),
          ),
          SizedBox(height: 10,),

          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              indicatorWeight: 4,
              indicatorColor: ConstColor.primary,
              tabs: [
                Tab(
                  child: Text(
                    'Recipes',
                    style: ConstTxtStyle.paragraph1(),
                  ),
                ),
                Tab(
                  child: Text(
                    'Liked',
                    style: ConstTxtStyle.paragraph1(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: TabBarView(
                controller: _tabController,
                children: [
                  LeftRecipeList(),
                  LeftRecipeList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column profileSummary(int amount, String label) {
    return Column(
      children: [
        Text(
          amount.toString(),
          style: ConstTxtStyle.heading1(),
        ),
        Text(
          label,
          style: ConstTxtStyle.paragraph2(textColor: ConstColor.secondaryText),
        ),
      ],
    );
  }
}


class LeftRecipeList extends StatelessWidget {
  const LeftRecipeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.70,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {

              },
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://pyxis.nymag.com/v1/imgs/d74/c8a/46ba077160d7491f10a466a72982dfbf8e-13-zuck-stream.rsquare.w330.jpg",
                            width: 25,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Mark Zuck",
                          style: ConstTxtStyle.small(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F19%2F2014%2F07%2F10%2Fpepperoni-pizza-ck-x.jpg&q=60",
                            width: double.infinity,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Pizza",
                      style: ConstTxtStyle.heading2(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Food",
                          style: ConstTxtStyle.small(
                              textColor: ConstColor.secondaryText),
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
                          style: ConstTxtStyle.small(
                              textColor: ConstColor.secondaryText),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
