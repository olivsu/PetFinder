import 'package:flutter/material.dart';
import 'product_tile.dart';
import 'product.dart';
import 'product_details_screen.dart';

void main() {
  runApp(HomeWidget());
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final List<Product> products = [
    Product(
      nome: 'Produto 1',
      descricao: 'Descrição do Produto 1',
      preco: 19.99,
      image:
          'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/adf87c27-e670-4e75-86fd-31c1241b9ed6/air-max-90-mens-shoes-6n3vKB.png',
    ),
    Product(
        nome: 'Produto 2',
        descricao: 'Descrição do Produto 2',
        preco: 9.99,
        image: ''),
    // Adicione mais produtos aqui se desejar
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Loja Virtual'),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: Column(
            children: [
              Wrap(
                spacing: 8.0,
                children: [
                  ChoiceChip(
                    label: Text('Nike'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text('Adidas'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text('Converse'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                  ChoiceChip(
                    label: Text('Vans'),
                    selected: false,
                    onSelected: (selected) {},
                  ),
                ],
              ),
              ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                      product: products[index],
                      onProductTap: (product) {
                        _showProductDetails(context, product);
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void _showProductDetails(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(product: product),
      ),
    );
  }
}
