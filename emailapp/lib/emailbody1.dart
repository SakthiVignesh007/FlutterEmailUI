import 'dart:ui';

import 'package:flutter/material.dart';

class MyEmailBody1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width >= 500
            ? 500
            : MediaQuery.of(context).size.width - 20,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://cdn.shopify.com/s/files/1/0569/6867/5527/files/finalised_logo_-_cropped.jpg?14393",
                  height: 70,
                ),
                SelectableText(
                  "ORDER #226324",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            const SelectableText(
              "Thank you for your purchase!",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            const SelectableText(
              "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent.",
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
            const SizedBox(height: 20.0),
            buildAttachment(),
            const SizedBox(height: 20.0),
            buildOrderSummary(),
          ],
        ),
      ),
    );
  }

  Widget buildAttachment() {
    return Container(
      child: Image.network(
        "https://cdn.shopify.com/s/files/1/0569/6867/5527/products/1v2_bf9e06f6-cd22-4209-a932-310a869534c0_compact_cropped.png?v=1632846589",
        width: 100,
        height: 100,
      ),
    );
  }

  Widget buildOrderSummary() {
    // You can customize this section based on your email content
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SelectableText(
            "Order Summary",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          buildOrderItem(),
          const SizedBox(height: 20.0),
          buildTotalAmount(),
        ],
      ),
    );
  }

  Widget buildOrderItem() {
    return ListTile(
      leading: Image.network(
        "https://cdn.shopify.com/s/files/1/0569/6867/5527/products/1v2_bf9e06f6-cd22-4209-a932-310a869534c0_compact_cropped.png?v=1632846589",
        width: 60,
        height: 60,
      ),
      title: const SelectableText(
          "Happilo 100% Natural Premium California Almonds"),
      subtitle: const SelectableText("200g"),
      trailing: const SelectableText("₹275.00"),
    );
  }

  Widget buildTotalAmount() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SelectableText(
          "Discount: -₹18.75",
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        SelectableText(
          "Subtotal: ₹256.25",
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        SelectableText(
          "Shipping: ₹100.00",
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        SelectableText(
          "Taxes: ₹0.00",
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
        Divider(),
        SelectableText(
          "Total: ₹356.25",
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        SelectableText(
          "You saved ₹18.75",
          style: TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
      ],
    );
  }
}
