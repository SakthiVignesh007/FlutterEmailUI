import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyEmailBody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 40),
          width: MediaQuery.of(context).size.width >= 500
              ? 500
              : MediaQuery.of(context).size.width - 20,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: .5)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.network("http://static.hopscotch.in/logo.png"),
              ),
              const Divider(
                height: .5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SelectableText(
                        "Order Shipped",
                        style: TextStyle(
                            color: Color(0xFFED54A4),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText("Dear PremierMonk,"),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText(
                        "We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered it.",
                        style: TextStyle(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText(
                          "Request you to pay ₹169 to the courier associate visiting you."),
                      const SizedBox(
                        height: 16,
                      ),
                      const SelectableText(
                          "We look forward to seeing you again."),
                      const SizedBox(
                        height: 16,
                      ),
                      Image.network(
                          "https://static.hopscotch.in/moments_banner.gif"),
                      const SizedBox(
                        height: 16,
                      ),
                    ]),
              ),
              const Divider(
                height: .5,
              ),
              buildShipmentDetails(),
              const Divider(
                height: .5,
                color: Colors.blueGrey,
              ),
              buildItems(),
              const Divider(
                height: .5,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText("SubTotal"),
                      SizedBox(
                        width: 32,
                      ),
                      SelectableText("₹69.0")
                    ],
                  ),
                ),
              ),
              const Divider(
                height: .5,
                color: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText("Shipping"),
                      SizedBox(
                        width: 32,
                      ),
                      SelectableText("₹100.0")
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(12),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SelectableText("Order Total"),
                      SizedBox(
                        width: 32,
                      ),
                      SelectableText("₹169.0")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        TextButton(
            onPressed: () {
              launchUrl(
                  "https://www.hopscotch.in/helpcenter/#/contact_us" as Uri);
            },
            style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent)),
            child: Image.network(
                "https://static.hopscotch.in/help_email_banner.jpg"))
      ],
    ));
  }

  Widget buildShipmentDetails() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SelectableText(
                        "SHIPMENT DETAILS",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const SelectableText("Tracking ID: SF321527154HO"),
                      const SelectableText("Sent through: Shadowfax"),
                      const SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color(0xFFED54A4)),
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.all(8)),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius
                                      .zero, // Set to zero for no border radius
                                ),
                              ),
                              overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent)),
                          onPressed: () {
                            launchUrl(
                                "https://hopscotch.clickpost.in/?cp_id=9&waybill=SF321527154HO"
                                    as Uri);
                          },
                          child: const SelectableText(
                            "TRACK SHIPMENT",
                            style: TextStyle(color: Colors.white),
                          )),
                      const SizedBox(
                        height: 12,
                      ),
                      const SelectableText(
                        "*Please note that tracking ID may take up to 24 hours to get activated.",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "SHIPPED TO",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SelectableText(
                        "PremierMonk PremierMonk Pvt Ltd, 649, 13th Cross, 27th Main, mrk Sector 1, Bangalore 560102 Bangalore, Karnataka 560102.",
                        style: TextStyle(wordSpacing: 3),
                      ),
                      SelectableText("9886158353")
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildItems() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          Image.network(
            "https://static.hopscotch.in/fstatic/product/201509/9b64cc3b-8ec9-450a-b2d7-4a5db398a62a_medium.jpg?version=1441100135058",
            height: 100,
            width: 100,
          ),
          const Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                "Cutest Princess Pink Glitter Slippers On Alligator Clip",
                style: TextStyle(fontSize: 12),
              ),
              SelectableText(
                "Qty: 1",
                style: TextStyle(fontSize: 12),
              )
            ],
          )),
          const SelectableText("₹69.00")
        ],
      ),
    );
  }
}
