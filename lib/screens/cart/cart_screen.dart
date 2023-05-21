import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

import 'cart_data.dart';

class CartScreen extends StatefulWidget {
  final Cart cart;

  const CartScreen({Key key, @required this.cart}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var screenWidth = queryData.size.width / 100;
    return Scaffold(
      appBar: customAppBar(context, title: 'Cart'),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cart.getItemCount(),
              itemBuilder: (context, index) {
                final item = widget.cart.items[index];
                return Card(
                  elevation: 2,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: ListTile(
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(item['imagePath']),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      item['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Price: \$${item['price'].toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle),
                      color: Colors.red,
                      onPressed: () {
                        widget.cart.removeItem(item);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Item removed from cart'),
                          duration: Duration(seconds: 2),
                        ));
                        // Rebuild the screen after removing the item
                        setState(() {});
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(screenWidth * 2),
            child: SizedBox(
              width: double.infinity,
              height: screenWidth * 12,
              child: ElevatedButton(
                onPressed: () {
                  // Place order logic
                  
                },
                child: Text('Place Order'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

