class Cart {
  List<dynamic> items = [
    {
      'name': 'Food Item 1',
      'price': 9.99,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 2',
      'price': 8.50,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 3',
      'price': 12.99,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 4',
      'price': 6.75,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 5',
      'price': 11.25,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 6',
      'price': 7.99,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 7',
      'price': 10.50,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 8',
      'price': 5.99,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 9',
      'price': 14.75,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
    {
      'name': 'Food Item 10',
      'price': 9.50,
      'imagePath': 'assets/images/real/apple_pie.jpg',
    },
  ];

  // Add an item to the cart
  void addItem(dynamic item) {
    items.add(item);
  }

  // Remove an item from the cart
  void removeItem(dynamic item) {
    items.remove(item);
  }

  // Update an item in the cart
  void updateItem(dynamic oldItem, dynamic newItem) {
    final index = items.indexOf(oldItem);
    if (index != -1) {
      items[index] = newItem;
    }
  }

  // Clear all items from the cart
  void clearCart() {
    items.clear();
  }

  // Get the count of items in the cart
  int getItemCount() {
    return items.length;
  }
}
