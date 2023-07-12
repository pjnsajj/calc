// import 'package:ayu_client/widgets/calendar.dart';
// import 'package:ayu_client/product_characteristics/product_characteristics.dart';
//import 'package:ayu_client/widgets/searcher.dart';
import 'package:ayu_client/widgets/searcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product_characteristics/product_characteristics.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Drink> drinks = [
    Drink('Кола', 'images/1.jpeg', 2.99),
    Drink('Лимонад', 'images/2.jpeg', 1.99),
    Drink('Чай', 'images/3.jpeg', 0.99),
  ];
  List<Drink> cartItems = [];

  void addToCart(Drink drink) {
    setState(() {
      cartItems.add(drink);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Searcher(),
        Container(
          height: MediaQuery.of(context).size.width,
          width: MediaQuery.of(context).size.height,
          child: ListView.builder(
            itemCount: drinks.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Image.asset(
                    drinks[index].imagePath,
                    width: 60,
                    height: 60,
                  ),
                  title: Text(drinks[index].name),
                  subtitle: Text('\$${drinks[index].price.toStringAsFixed(2)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {
                      addToCart(drinks[index]);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  final SearchController controller = SearchController();

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(useMaterial3: true);

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(title: const Text('Search Anchor Sample')),
        body: Column(
          children: <Widget>[
            SearchAnchor(
                searchController: controller,
                builder: (BuildContext context, SearchController controller) {
                  return IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      controller.openView();
                    },
                  );
                },
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
            Center(
              child: controller.text.isEmpty
                  ? const Text('No item selected')
                  : Text('Selected item: ${controller.value.text}'),
            ),
          ],
        ),
      ),
    );
  }
}
