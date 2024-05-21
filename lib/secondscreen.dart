import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String isselected = "Top ";

  List<String> imageNames = [
    'ocean.jpeg',
    'snow.jpeg',
    'desert.jpeg',
    'forest.jpg'
    // Add more image names as needed
  ];

  List<String> textList = [
    'Top',
    'Popular',
    'Trending',
    'Famous',
    'Hot',
    'Most Loved',
    'Unique',
    // Add more text strings as needed
  ];

  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    // Add more numbers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.short_text, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          IconButton(
            icon: CircleAvatar(
              backgroundImage: AssetImage('images/explore2.jpeg'),
            ),
            onPressed: () {
              // Add your additional action functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Your daily',
                style: TextStyle(
                  fontFamily: 'Merienda',
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Recommendation',
                style: TextStyle(
                  fontFamily: 'Merienda',
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageNames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12), // Same radius as container for consistent look
                        child: Image.asset(
                          'images/${imageNames[index]}',
                          height: 183,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 50, // Adjust the height as needed
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: textList.map((text) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 7),
                        child: Center(
                          child: Text(
                            text,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      spreadRadius: 1.0,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Special Offer',
                      style: TextStyle(
                        fontFamily: 'Merienda',
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Get 50% off on your next purchase!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        // Add your button action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Claim Now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}