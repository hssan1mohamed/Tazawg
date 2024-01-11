import 'package:flutter/material.dart';
import 'package:tazawg/core/utls/styles%20copy.dart';

class Location extends StatelessWidget {
  const Location({super.key, required this.location});
  final String location;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 22,
          color: Colors.grey,
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 100,
          child: Opacity(
            opacity: .4,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.clip,
              location,
              style: Styles.textStyle16,
            ),
          ),
        )
      ],
    );
  }
}
