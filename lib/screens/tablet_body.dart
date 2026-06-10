import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_tags.dart';
import '../widgets/destination_card.dart';

class TabletBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearchBar(),
                SizedBox(height: 24),
                Container(
                  height: 180,
                  decoration: BoxDecoration(color: kPrimaryGreen, borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      Expanded(child: Container(color: Colors.white24, height: double.infinity)),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('TOP DESTINATION', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                              Text('Santorini, Greece', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),
                              Text('Cliffside villages, whitewashed domes & golden sunsets over the Aegean.', style: TextStyle(color: Colors.black87, fontSize: 12)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Text('Categories', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                CategoryTags(),
                SizedBox(height: 24),
                Text('Popular Destinations', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 12),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.1,
                  ),
                  itemCount: destinations.length,
                  itemBuilder: (context, index) {
                    return DestinationCard(destination: destinations[index]);
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