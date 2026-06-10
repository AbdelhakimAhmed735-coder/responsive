import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFF171717);
const kCardBackgroundColor = Color(0xFF222222);
const kPrimaryGreen = Color(0xFF52B788);
const kTextMuted = Color(0xff8A8A8A);

class Destination {
  final String title;
  final String location;
  final String price;
  final String rating;
  final String category;
  final Color color;

  Destination({
    required this.title,
    required this.location,
    required this.price,
    required this.rating,
    required this.category,
    required this.color,
  });
}

List<Destination> destinations = [
  Destination(title: 'Kyoto', location: 'Japan', price: '\$820', rating: '4.9', category: 'Culture', color: Color(0xFF2D6A4F)),
  Destination(title: 'Bali', location: 'Indonesia', price: '\$640', rating: '4.8', category: 'Beach', color: Color(0xFF1B4332)),
  Destination(title: 'Paris', location: 'France', price: '\$950', rating: '4.7', category: 'City', color: Color(0xFF2A6F97)),
  Destination(title: 'Iceland', location: 'Europe', price: '\$1,100', rating: '4.9', category: 'Mountain', color: Color(0xFF013A63)),
  Destination(title: 'Amalfi Coast', location: 'Italy', price: '\$780', rating: '4.8', category: 'Beach', color: Color(0xFF014F86)),
  Destination(title: 'Maldives', location: 'Indian Ocean', price: '\$2,400', rating: '5.0', category: 'Beach', color: Color(0xFFA9DEF9)),
];

List<String> categories = ['All', 'Beach', 'Mountain', 'City', 'Culture', 'Nature', 'Adventure'];