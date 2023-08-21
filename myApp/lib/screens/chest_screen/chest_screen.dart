import 'package:flutter/material.dart';
class ChestScreen extends StatefulWidget {
  const ChestScreen({Key? key}) : super(key: key);

  @override
  _ChestScreenState createState() => _ChestScreenState();
}

class _ChestScreenState extends State<ChestScreen> {
  int currentPage = 0; // Track the current page
  int itemsPerPage = 3; // Number of items per page

  List<String> neckItems = [
    "Tutor 1",
    "Tutor 2",
    "Tutor 3",
    "Tutor 4",
    "Tutor 5",
    "Tutor 6",
    // Add more items as needed...
  ];

  @override
  Widget build(BuildContext context) {
    int startIndex = currentPage * itemsPerPage;
    int endIndex = (currentPage + 1) * itemsPerPage;
    endIndex = endIndex > neckItems.length ? neckItems.length : endIndex;

    List<String> currentPageItems = neckItems.sublist(startIndex, endIndex);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (String item in currentPageItems)
              Container(
                width: 250,
                height: 250,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    ClipOval(
                      child: Image.asset(
                        "images/pt_gym.png",
                        width: 100, // Adjust the size as needed
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text("I love to be your personal trainer in the near future." ,textAlign: TextAlign.center,),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 5; i++)
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(item),
                  ],
                ),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (currentPage > 0)
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage--;
                  });
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
              ),
            SizedBox(width: 16),
            Text(
              "Page ${currentPage + 1} of ${((neckItems.length - 1) ~/ itemsPerPage) + 1}",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 16),
            if (endIndex < neckItems.length)
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentPage++;
                  });
                },
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.blue,
                ),
              ),
          ],
        )
    
      ],
    );
  }
}