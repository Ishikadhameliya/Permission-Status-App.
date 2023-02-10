import 'package:flutter/material.dart';
import 'package:permission_status_app/screens/homepage.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        '/': (context) => const Homepage(),
     },
    ),
  );
}

