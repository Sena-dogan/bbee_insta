import 'package:flutter/material.dart';

class StoryBuble extends StatelessWidget {
  const StoryBuble({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[500],
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(child: Text(text, style: TextStyle(color: Colors.white),),),
        ],
      ),
      
    );
  }
}