import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/Item.dart';
import "package:provider/provider.dart";
import "../provider/shoppingcart_provider.dart";

class Checkout extends StatelessWidget {
  const Checkout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Item Details"),
          const Divider(height: 4, color: Colors.black),
          getItems(context),
        ],
      ),
    );
  }

  Widget getItems(BuildContext context) {
    List<Item> products = context.watch<ShoppingCart>().cart;
    String productname = "";
    return products.isEmpty
        ? const Text('No Items to Checkout!')
        : Expanded(
            child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.food_bank),
                      title: Text(products[index].name),
                      trailing: Text(products[index].price.toString()),
                    );
                  },
                ),
              ),
              const Divider(height: 4, color: Colors.black),
              computeCost(),
              payButton(context),
            ],
          ));
  }

  Widget payButton(BuildContext context) {
    return Flexible(
        child: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          ElevatedButton(
              onPressed: () {
                context.read<ShoppingCart>().removeAll();
                Navigator.pushNamed(context, "/products");
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Payment Successful!"),
                  duration: Duration(seconds: 1, milliseconds: 100),
                ));
              },
              child: const Text("Pay Now")),
        ])));
  }

  Widget computeCost() {
    return Consumer<ShoppingCart>(builder: (context, cart, child) {
      return Text("Total: ${cart.cartTotal}");
    });
  }
}
