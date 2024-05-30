import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(height: 20),
            CategoryFilters(),
            SizedBox(height: 20),
            Expanded(
              child: ProductGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search products...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}

class CategoryFilters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: [
        Chip(label: Text('All')),
        Chip(label: Text('Electronics')),
        Chip(label: Text('Clothing')),
        Chip(label: Text('Home & Garden')),
        Chip(label: Text('Beauty')),
        Chip(label: Text('Toys')),
      ],
    );
  }
}

class ProductGrid extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'image':
          'https://media.us.lg.com/transform/ecomm-PDPGallery-1100x730/6f7c6e55-4c53-4b23-a6ef-45bbb07c8d3c/TV_OLED77G4WUA_ACSI_gallery_01_3000x3000',
      'name':
          '77 inch Class LG OLED evo G4 4K Smart TV 2024 with Supplied Wall Mount',
      'price': '\$4,499.99',
    },
    {
      'image':
          'https://media.us.lg.com/transform/ecomm-PDPGallery-1100x730/e64bb88d-49a1-4f54-a9dc-de6dd1b33714/md08003935-DZ-07-jpg',
      'name': 'LG OLED evo G3 77 inch Class 4K OLED TV 2023',
      'price': '\$3,299.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(
          image: products[index]['image']!,
          name: products[index]['name']!,
          price: products[index]['price']!,
        );
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  ProductItem({required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Center(
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.broken_image, size: 48);
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              price,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
