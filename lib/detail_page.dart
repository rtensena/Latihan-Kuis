import 'package:flutter/material.dart';
import 'package:latihankuis/tourism_place.dart';

class DetailPage extends StatelessWidget {
  final TourismPlace place;
  const DetailPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: place.imageUrls.length,
              itemBuilder: (context, index) {
                return Image.network(place.imageUrls[index]);
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.access_time),
            Icon(Icons.watch_later),
            Icon(Icons.money)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Open Everyday"),
            Text("09.00 - 20.00"),
            Text("RP. 25.000")
          ],
        ),
        SizedBox(height: 20),
        Text(place.description),
      ]),
    );
  }
}
