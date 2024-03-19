import 'package:flutter/material.dart';
import 'package:latihankuis/detail_page.dart';
import 'package:latihankuis/tourism_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourism Place App"),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: tourismPlaceList.length,
            itemBuilder: (context, index) {
              final TourismPlace place = tourismPlaceList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(place: place);
                  }));
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Image.network(place.imageUrls[0]),
                      ),
                      Text(place.name),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
