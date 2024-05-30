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
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 1',
      'price': '\$29.99',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 2',
      'price': '\$59.99',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 3',
      'price': '\$19.99',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 4',
      'price': '\$99.99',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 5',
      'price': '\$49.99',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Product 6',
      'price': '\$39.99',
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
