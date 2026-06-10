import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_tags.dart';
import '../widgets/destination_card.dart';

class DesktopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Wandr', style: TextStyle(color: kPrimaryGreen, fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(width: 32),
                    Expanded(child: CustomSearchBar()),
                    SizedBox(width: 32),
                    CircleAvatar(backgroundColor: Colors.white24, child: Icon(Icons.person, color: Colors.white)),
                  ],
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(color: kPrimaryGreen, borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          children: [
                            Expanded(child: Container(color: Colors.white24, height: double.infinity)),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('TOP DESTINATION', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black54)),
                                    Text('Santorini, Greece', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black)),
                                    Text('Cliffside villages, deep blue domes & golden sunsets', style: TextStyle(color: Colors.black87, fontSize: 14)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(height: 117, child: DestinationCard(destination: destinations[0])),
                          SizedBox(height: 16),
                          Container(height: 117, child: DestinationCard(destination: destinations[5])),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Text('Categories', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                CategoryTags(),
                SizedBox(height: 32),
                Text('Popular Destinations', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.2,
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