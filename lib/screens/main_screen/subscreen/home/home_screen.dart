import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';
import 'package:recipe_ui_chefio/constants/consttxtstyle.dart';
import 'package:recipe_ui_chefio/screens/detail_recipe/detail_recipe_screen.dart';
import 'package:unicons/unicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int selectedCategory = 0;
  List<String> categoryList = [
    "All",
    "Food",
    "Drink",
  ];
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          height: 45,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            color: Color(0xFFEFEFEF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              prefixIcon: Icon(
                UniconsLine.search,
                size: 18,
                color: Colors.black,
              ),
              hintText: "Search",
              border: InputBorder.none,
            ),
          ),
        ),
        bottom: AppBar(
          toolbarHeight: 105,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          flexibleSpace: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(15, 20, 0, 15),
                child: Text(
                  "Category",
                  style: ConstTxtStyle.heading2(),
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                height: 45,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          selectedCategory = index;
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            categoryList[index],
                            textAlign: TextAlign.center,
                            style: ConstTxtStyle.paragraph1(
                                textColor: (selectedCategory == index)
                                    ? Colors.white
                                    : ConstColor.secondaryText),
                          ),
                          decoration: BoxDecoration(
                            color: (selectedCategory == index)
                                ? ConstColor.primary
                                : Color(0xFFF1F1F1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
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
                    'Left',
                    style: ConstTxtStyle.paragraph1(),
                  ),
                ),
                Tab(
                  child: Text(
                    'Right',
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailRecipeScreen(),
                  ),
                );
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
