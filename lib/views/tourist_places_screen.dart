import 'package:flutter/material.dart';
import 'package:tourist_places/view_model/tourist_place_view_model.dart';

class TouristPlacesScreen extends StatelessWidget {
  final TouristPlaceViewModel viewModel = TouristPlaceViewModel();

  TouristPlacesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tourist Places"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: viewModel.places.length,
        itemBuilder: (context, index) {
          final place = viewModel.places[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                  child: Image.asset(
                    place.imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 180,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.redAccent, size: 22),
                          SizedBox(width: 6),
                          Text(
                            place.name,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text(
                        place.country,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

