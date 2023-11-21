import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyEmailApp(),
//     );
//   }
// }

class MyEmailBody3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              width: double.maxFinite,
              height: 75,
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(
                    "https://cdn.shopify.com/s/files/1/0997/6284/files/noise_logo_white.png?v=1588831048",
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SelectableText(
              "THANK YOU FOR PLACING YOUR ORDER WITH US.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const SelectableText(
              "Your order number: 2343881 has been confirmed.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            const SelectableText(
              "NOTE:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SelectableText(
              "Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(color: Color(0XFFF5F5F5)),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        "REGISTERED ADDRESS:",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SelectableText(
                        "Mesh ., MeshMonk Pvt Ltd, 649, 13th Cross, 27th Main, HSR Sector 1, Bangalore 560102, BANGALORE, Karnataka, 560102, India",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
              ),
            ),

            const SizedBox(height: 10),
            const SelectableText(
              "Here's your order:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            // Add your order items here (you can use ListView or DataTable)
            // Example:
            // buildOrderItem("Noise Nerve Neckband Earphones with Mic - Cobalt Blue", "1", "Rs. 999.00"),
            // buildOrderItem("Another Item", "2", "Rs. 199.00"),
            // ...
            const SizedBox(height: 10),
            buildOrderTable(),
            const SizedBox(height: 10),
            const SelectableText(
              "Total: Rs.999.0",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            // Add images with hyperlinks (you can use GestureDetector to handle taps)
            buildHyperlinkImage(
              "https://www.gonoise.com/collections/smart-watches",
              "https://cdn.shopify.com/s/files/1/0997/6284/files/Noise-Smart-watch-Emailer.png?v=1618995912",
            ),
            buildHyperlinkImage(
              "https://www.gonoise.com/collections/audio",
              "https://cdn.shopify.com/s/files/1/0997/6284/files/Noise-Smart-Audio-Emailer-Category_2_1.png?v=1617199844",
            ),
            const SizedBox(height: 20),
            const SelectableText(
              "We will let you know as soon as your order is shipped. In the meantime, if there’s anything we can help you with, just fill out a form HERE and we’ll get right back to you! We’re available from 9:30AM to 6:00PM from Monday to Saturday.\n\nStay safe and thank you for your patience.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            const SelectableText(
              "Please Note:",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SelectableText(
              "Noise or its employees will never contact you with any special offers including lucky draws, lotteries, or exclusive prizes. Please do not share your personal or bank account details over the phone or via email to stay protected against any kind of fraudulent deals.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            const SizedBox(height: 20),
            // Social media icons
            buildSocialMediaIcons(),
          ],
        ),
      ),
    );
  }

  Widget buildOrderItem(String name, String quantity, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SelectableText(
          quantity,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            // padding: EdgeInsets.only(right: 10),
          ),
        ),
        Expanded(
          child: SelectableText(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SelectableText(
          price,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget buildHyperlinkImage(String url, String imageUrl) {
    return GestureDetector(
      onTap: () {
        // Handle tap on the hyperlink
      },
      child: Image.network(
        imageUrl,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildOrderTable() {
    return Center(
      child: DataTable(
        border: TableBorder.all(color: Color(0XFFF5F5F5)),
        columns: const [
          DataColumn(label: SelectableText('Item')),
          DataColumn(label: SelectableText('Name')),
          DataColumn(label: SelectableText('Quantity')),
          DataColumn(label: SelectableText('Price')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(SelectableText('1')),
            DataCell(SelectableText(
                'Noise Nerve Neckband Earphones with Mic - Cobalt Blue')),
            DataCell(SelectableText('1')),
            DataCell(SelectableText('Rs. 999.0')),
          ]),
        ],
      ),
    );
  }

  Widget buildSocialMediaIcons() {
    return Column(
      children: [
        const SelectableText(
          "CONNECT WITH US",
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            // margin: EdgeInsets.only(bottom: 10),
          ),
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialMediaIcon(
              "https://cdn.shopify.com/s/files/1/0997/6284/files/fb_icon_png_480921.png?46198",
              "https://www.facebook.com/gonoise/",
            ),
            buildSocialMediaIcon(
              "https://cdn.shopify.com/s/files/1/0997/6284/files/instagram-Logo-PNG-Transparent-Background-download-768x768.png?46198",
              "https://www.instagram.com/go_noise/",
            ),
            buildSocialMediaIcon(
              "https://cdn.shopify.com/s/files/1/0997/6284/files/logo-twitter-transparent-background-10.png?46198",
              "https://twitter.com/gonoise",
            ),
            buildSocialMediaIcon(
              "https://cdn.shopify.com/s/files/1/0997/6284/files/youtube_PNG15.png?46198",
              "https://www.youtube.com/channel/UCF9puX2jalk1fh14ns_npMw",
            ),
            buildSocialMediaIcon(
              "https://cdn.shopify.com/s/files/1/0997/6284/files/linkedin-linkedin-button-social-media-icon-png-pictures-7.png?46198",
              "https://www.linkedin.com/company/gonoise-com",
            ),
          ],
        ),
      ],
    );
  }

  Widget buildSocialMediaIcon(String imageUrl, String url) {
    return GestureDetector(
      onTap: () {
        // Handle tap on social media icon
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.network(
          imageUrl,
          width: 30,
        ),
      ),
    );
  }
}
