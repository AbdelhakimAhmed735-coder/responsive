import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_tags.dart';
import '../widgets/destination_card.dart';

class MobileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchBar(),
                SizedBox(height: 20),
                // Banner
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: kPrimaryGreen, borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.white24,
                        height: 120,
                        width: double.infinity,
                      ),
                      SizedBox(height: 12),
                      Text('TOP DESTINATION', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                      Text('Santorini, Greece', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                      Text('Cliffside views & iconic sunsets', style: TextStyle(color: Colors.black87, fontSize: 12)),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text('Categories', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                CategoryTags(),
                SizedBox(height: 20),
                Text('Popular Destinations', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200,
                      margin: EdgeInsets.only(bottom: 16),
                      child: DestinationCard(destination: destinations[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}