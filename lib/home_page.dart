import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int totalPage = 4;
  void _onScroll() {}

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
            page: 1,
            image: 'assets/images/one.jpg',
            title: 'Yosemite National Park',
            Description:
                'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.',
          ),
          makePage(
            page: 2,
            image: 'assets/images/two.jpg',
            title: 'Golden Gate Bridge',
            Description:
                'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.',
          ),
          makePage(
            page: 3,
            image: 'assets/images/three.jpg',
            title: 'Sedona',
            Description:
                "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful.",
          ),
          makePage(
            page: 4,
            image: 'assets/images/four.jpg',
            title: 'Savannah',
            Description:
                "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak.",
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, Description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.2),
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 3),
                          child: const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ),
                        const Text(
                          '4.0',
                          style: TextStyle(color: Colors.white70),
                        ),
                        const Text(
                          '(2300)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        Description,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            height: 1.9,
                            fontSize: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'READ MORE',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
