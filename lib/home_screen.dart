import 'package:flutter/material.dart';
import 'package:helm_store/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(18, 55, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HELMETSTORE',
                  style: darkText.copyWith(
                    fontWeight: bold,
                    fontSize: 24,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: darkC,
                  size: 26,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: darkC,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                suffixIcon: Icon(
                  Icons.search,
                  color: darkC,
                ),
                suffixIconColor: darkC,
                hintText: 'Search Product',
                hintStyle: darkText,
                filled: true,
                fillColor: creamC,
                focusColor: creamC,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: creamC,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: creamC,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categoryItem(
      String imageUrl,
      String title,
    ) {
      return Container(
        margin: EdgeInsets.only(right: 8),
        width: 159,
        height: 71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: whiteText.copyWith(
              fontSize: 13,
              fontWeight: medium,
              color: Colors.white,
            ),
          ),
        ),
      );
    }

    Widget listCategory() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Categories',
              style: darkText.copyWith(fontSize: 16),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                categoryItem(
                  'assets/people3.png',
                  'Full Face Helmet',
                ),
                categoryItem(
                  'assets/people2.png',
                  'Dual Sport/Dirt',
                ),
                categoryItem(
                  'assets/people1.png',
                  'Open Face',
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget ListCategory() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Categories',
              style: darkText.copyWith(fontSize: 16),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                categoryItem(
                  'assets/people3.png',
                  'Full Face Helmet',
                ),
                categoryItem(
                  'assets/people2.png',
                  'Dual Sport/Dirt',
                ),
                categoryItem(
                  'assets/people1.png',
                  'Open Face',
                ),
              ],
            ),
          )
        ],
      );
    }

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        header(),
        listCategory(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Realeases',
                    style: darkText.copyWith(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        'View All',
                        style: darkText.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 10,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 175,
                    height: 268,
                    color: Colors.black,
                  ),
                  Container(
                    width: 175,
                    height: 268,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
