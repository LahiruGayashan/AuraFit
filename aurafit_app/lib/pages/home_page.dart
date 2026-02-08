import 'package:aurafit_app/utils/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            
            child: Column(
              children: [
                Text("Saturday, January 16",style: TextStyle(
                  color: dateColor,
                  fontSize: 16,
                ),
                ),
                Text("data")
              ],
            ),
            
          ),
        ),
      ),
    );
  }
}