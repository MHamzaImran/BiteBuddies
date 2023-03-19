import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../../utils/helper.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hamza Imran",
                style: TextStyle(
                  color: AppColor.dark,
                  fontSize: 16,
                )),
            Text(
              "Ghazali Hostels",
              style: TextStyle(
                color: AppColor.dark,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
        toolbarHeight: screenWidth * 20,
        // profile image on leading
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(
              Helper.getAssetName("user.jpg", "real"),
            ),
          ),
        ),
        // text on trailing
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if(showSearch) {
                  showSearch = false;
                }
                else{
                  showSearch=true;
                }
              });
            },
            icon: Icon(
              showSearch?Icons.close:Icons.search,
              color: AppColor.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: AppColor.primary,
            ),
          ),
        ],
        elevation: 1,
        backgroundColor: AppColor.bright,
      ),
      backgroundColor: AppColor.bright,

      /// Body
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 2),
        child: Column(
          children: [
            showSearch?Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 5,vertical: screenWidth * 2),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColor.primary)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for food",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ):SizedBox(height: 0,),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 2),
                    child: Text(
                      'Quick Search',
                      style: TextStyle(
                          fontSize: screenWidth * 4.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("pizza.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Pizza",
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("burger.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Burger",
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("coffee.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Coffee",
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("dessert.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Dessert",
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("breakfast.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Breakfast",
                        ),
                        CategoryCard(
                          image: Image.asset(
                            Helper.getAssetName("bakery.png", "categories"),
                            fit: BoxFit.cover,
                          ),
                          name: "Bakery",
                        ),
                      ],
                    ),
                  ),
                  // popular restaurants
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Restaurants Near You",
                          style: TextStyle(
                              fontSize: screenWidth * 4.5,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(fontSize: screenWidth * 3.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RestaurantCard(
                    name: 'Some Restaurant',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RestaurantCard(
                    name: 'Some Restaurant',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RestaurantCard(
                    name: 'Some Restaurant',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(screenWidth * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Most Popular Deals",
                          style: TextStyle(
                              fontSize: screenWidth * 4.5,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(fontSize: screenWidth * 3.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 65,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MostPopularCard(
                          name: 'Some Deal',
                          image: Image.asset(
                            Helper.getAssetName("pizza4.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        MostPopularCard(
                          name: 'Some Deal',
                          image: Image.asset(
                            Helper.getAssetName("pizza4.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        MostPopularCard(
                          name: 'Some Deal',
                          image: Image.asset(
                            Helper.getAssetName("pizza4.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        MostPopularCard(
                          name: 'Some Deal',
                          image: Image.asset(
                            Helper.getAssetName("pizza4.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        MostPopularCard(
                          name: 'Some Deal',
                          image: Image.asset(
                            Helper.getAssetName("pizza4.jpg", "real"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recent Items",
                          style: TextStyle(
                              fontSize: screenWidth * 4.5,
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(fontSize: screenWidth * 3.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RecentItemCard(
                    name: 'Recent Item',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RecentItemCard(
                    name: 'Recent Item',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  RecentItemCard(
                    name: 'Recent Item',
                    image: Image.asset(
                      Helper.getAssetName("pizza4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentItemCard extends StatelessWidget {
  const RecentItemCard({
    Key key,
    @required String name,
    @required Image image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 80,
            height: 80,
            child: _image,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _name,
                  style: Helper.getTheme(context)
                      .headline4
                      .copyWith(color: AppColor.primary),
                ),
                Row(
                  children: [
                    Text("Cafe"),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        ".",
                        style: TextStyle(
                          color: AppColor.main,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Western Food"),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColor.main,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('(124) Ratings')
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class MostPopularCard extends StatelessWidget {
  const MostPopularCard({
    Key key,
    @required String name,
    @required Image image,
  })  : _name = name,
        _image = image,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: screenWidth * 60,
              height: screenWidth * 50,
              child: _image,
            ),
          ),
          SizedBox(height: screenWidth * 2),
          Text(
            _name,
            style: TextStyle(fontSize: screenWidth * 3.5),
          ),
          Row(
            children: [
              Text("Cafe", style: TextStyle(fontSize: screenWidth * 3.5)),
              SizedBox(
                width: screenWidth * 2,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: screenWidth * 2),
                child: Text(
                  ".",
                  style: TextStyle(
                    color: AppColor.main,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 2,
              ),
              Text(
                "Western Food",
                style: TextStyle(fontSize: screenWidth * 3.5),
              ),
              SizedBox(
                width: screenWidth * 2,
              ),
              Image.asset(
                Helper.getAssetName("star_filled.png", "virtual"),
              ),
              SizedBox(
                width: screenWidth * 2,
              ),
              Text(
                "4.9",
                style: TextStyle(
                    color: AppColor.main, fontSize: screenWidth * 3.5),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    Key key,
    @required String name,
    @required Image image,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
              height: screenWidth * 50, width: double.infinity, child: _image),
          SizedBox(
            height: screenWidth * 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 5,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      _name,
                      style: Helper.getTheme(context).headline3,
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 2,
                ),
                Row(
                  children: [
                    Image.asset(
                      Helper.getAssetName("star_filled.png", "virtual"),
                    ),
                    SizedBox(
                      width: screenWidth * 2,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                          color: AppColor.main, fontSize: screenWidth * 3.5),
                    ),
                    SizedBox(
                      width: screenWidth * 2,
                    ),
                    Text(
                      "(124 ratings)",
                      style: TextStyle(fontSize: screenWidth * 3.5),
                    ),
                    SizedBox(
                      width: screenWidth * 2,
                    ),
                    Text(
                      "Cafe",
                      style: TextStyle(fontSize: screenWidth * 3.5),
                    ),
                    SizedBox(
                      width: screenWidth * 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: screenWidth * 2),
                      child: Text(
                        ".",
                        style: TextStyle(
                            color: AppColor.main,
                            fontWeight: FontWeight.w900,
                            fontSize: screenWidth * 3.5),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 2,
                    ),
                    Text(
                      "Western Food",
                      style: TextStyle(fontSize: screenWidth * 3.5),
                    ),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required Image image,
    @required String name,
  })  : _image = image,
        _name = name,
        super(key: key);

  final String _name;
  final Image _image;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 2),
      child: SizedBox(
        width: screenWidth * 25,
        child: Card(
          elevation: 5,
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.all(screenWidth * 2),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(10),
              //     child: Container(
              //       width: screenWidth * 20,
              //       height: screenWidth * 20,
              //       child: _image,
              //     ),
              //   ),
              // ),
              Padding(padding: EdgeInsets.symmetric(horizontal :screenWidth * 2), child: _image),
              Text(
                _name,
               style: TextStyle(fontSize: screenWidth * 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
