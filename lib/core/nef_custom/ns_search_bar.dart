import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Where to ?"),
                Text(
                  'Anywhere ∙ Any week ∙ Add guests',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Spacer(),
            Icon(Icons.format_align_center_rounded)
          ],
        ),
      ),
    );
  }
}
