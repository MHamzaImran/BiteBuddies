import 'package:flutter/material.dart';
import 'package:bite_buddies/const/colors.dart';
import 'package:bite_buddies/utils/helper.dart';

class OfferScreen extends StatelessWidget {
  static const routeName = "/offerScreen";
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title:Text(
          "Latest Offers",
          style: TextStyle(
            color: AppColor.disabled,
            fontSize: screenWidth * 6,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: screenWidth * 20,
        
        elevation: 1,
        backgroundColor: AppColor.bright,
      ),
      backgroundColor: AppColor.bright,
      body: ListView(
        children: [
          SizedBox(
            height: screenWidth * 2,
          ),
          OfferCard(
            image: Image.asset(
              Helper.getAssetName("breakfast.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Cafe de Noires",
          ),
          OfferCard(
            image: Image.asset(
              Helper.getAssetName("western2.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Isso",
          ),
          OfferCard(
            image: Image.asset(
              Helper.getAssetName("coffee3.jpg", "real"),
              fit: BoxFit.cover,
            ),
            name: "Cafe Beans",
          ),
        ],
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key key,
    String name,
    Image image,
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
    return Container(
      height: screenWidth * 65,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
              height: screenWidth * 50, width: double.infinity, child: _image),
          SizedBox(
            height: screenWidth * 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 5),
            child: Row(
              children: [
                Text(
                  _name,
                  style: TextStyle(
                      fontSize: screenWidth * 4, color: AppColor.primary),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 5),
            child: Row(
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
                  "(124 ratings) Cafe",
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
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 3.5),
                  ),
                ),
                Text(
                  " Western Food",
                  style: TextStyle(fontSize: screenWidth * 3.5),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
