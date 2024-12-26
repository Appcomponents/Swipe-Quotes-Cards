import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:animated_background/animated_background.dart';
import 'package:url_launcher/url_launcher.dart';
/*import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:animated_background/animated_background.dart';

const IMAGES = ["fc3", "cod", "destiny", "apex", "game_4", "ghost", "mk11", "nfs", "pubg", "mk112"];
final borderRadius = BorderRadius.circular(20.0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe Deck with Live Wallpaper',
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    // Initializing the animation controller
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    // Setting up the scale animation
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    // Disposing of the controller when done
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EDC App Card Designs",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.6,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
           // image: DecorationImage(
            //  image: AssetImage('assets/images/vp.jpg'), // Path to your image
            //  fit: BoxFit.cover,
            ),
          ),
        ),
    //  ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/vp.jpg', // Static background image
              fit: BoxFit.cover,
            ),
          ),
          // Live Wallpaper
          AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: const ParticleOptions(
                spawnMaxRadius: 50,
                spawnMinSpeed: 10.00,
                particleCount: 40,
                spawnMaxSpeed: 30,
                minOpacity: 0.3,
                spawnOpacity: 0.4,
                baseColor: Colors.pink,
                image: Image(image: AssetImage('assets/images/VP24.png')),
              ),
            ),
            vsync: this,
            child: Container(), // Empty container to overlay the animation
          ),
          // Swipe Deck on Top
          Center(
            child: SizedBox(
              height: double.infinity,
              width: 400,
              child: Center(
                child: SwipeDeck(
                  aspectRatio: 9 / 9,
                  startIndex: 0,
                  emptyIndicator: const Center(child: Text("Nothing Here")),
                  cardSpreadInDegrees: 15,
                  onSwipeLeft: () {
                    print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                  },
                  onSwipeRight: () {
                    print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                  },
                  onChange: (index) {
                    print(IMAGES[index]);
                  },
                  widgets: IMAGES
                      .map((e) => GestureDetector(
                    onTap: () {
                      print(e);
                    },
                    child: AnimatedBuilder(
                      animation: _scaleAnimation,
                      builder: (context, child) {
                        return ClipRRect(
                          borderRadius: borderRadius,
                          child: Transform.rotate(
                            angle: 0.05,
                            child: ScaleTransition(
                              scale: _scaleAnimation,
                              child: Image.asset(
                                "assets/images/$e.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/


const IMAGES = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "apex",
  "cod",
  "destiny",
  "nfs",
  "game_4",
  "ghost",
  "mk11",
  "fc3",
  "pubg",
  "mk112"
];

const LINKS = [
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz",
  "https://github.com/prasannazzz"
];

final borderRadius = BorderRadius.circular(20.0);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Swipe Deck with Live Wallpaper',
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  // Method to open a URL
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EDC App Cards",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.6,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
           // image: DecorationImage(
            //  image: AssetImage('assets/images/vp.jpg'), // Path to your image
             // fit: BoxFit.cover,
            ),
          ),
        ),
     // ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/vp.jpg', // Static background image
              fit: BoxFit.cover,
            ),
          ),
          // Live Wallpaper
          AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: const ParticleOptions(
                spawnMaxRadius: 50,
                spawnMinSpeed: 10.00,
                particleCount: 21,
                spawnMaxSpeed: 50,
                minOpacity: 0.3,
                spawnOpacity: 0.4,
                baseColor: Colors.pink,
                image: Image(image: AssetImage('assets/images/VP24.png')),
              ),

            ),

            vsync: this,
            child: Container(), // Empty container to overlay the animation
          ),
          AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: const ParticleOptions(
                spawnMaxRadius: 50,
                spawnMinSpeed: 10.00,
                particleCount: 8,
                spawnMaxSpeed: 50,
                minOpacity: 0.3,
                spawnOpacity: 0.4,
                baseColor: Colors.orange,
                image: Image(image: AssetImage('assets/images/VP24.png')),
              ),

            ),

            vsync: this,
            child: Container(), // Empty container to overlay the animation
          ),

    AnimatedBackground(
    behaviour: RandomParticleBehaviour(
    options: const ParticleOptions(
    spawnMaxRadius: 30,
    spawnMinSpeed: 20.00,
    particleCount: 13,
    spawnMaxSpeed: 30,
    minOpacity: 0.2,
    spawnOpacity: 0.5,
    baseColor: Colors.blue,
    ),
    ),
    vsync: this,
    child: Container(),
    ),
          Center(
            child: SizedBox(
              height: double.infinity,
              width: 400,
              child: Center(
                child: SwipeDeck(
                  aspectRatio: 9 / 4,
                  startIndex: 0,
                  emptyIndicator: const Center(child: Text("Nothing Here")),
                  cardSpreadInDegrees: 15,
                  onSwipeLeft: () {
                    print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                  },
                  onSwipeRight: () {
                    print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                  },
                  onChange: (index) {
                    print(IMAGES[index]);
                  },
                  widgets: IMAGES
                      .asMap()
                      .entries
                      .map((entry) {
                    int index = entry.key;
                    String image = entry.value;
                    return GestureDetector(
                      onTap: () {
                        print(image);
                        _launchURL(LINKS[index]); // Open URL
                      },
                      child: AnimatedBuilder(
                        animation: _scaleAnimation,
                        builder: (context, child) {
                          return ClipRRect(
                            borderRadius: borderRadius,
                            child: Transform.rotate(
                              angle: 0.05,
                              child: ScaleTransition(
                                scale: _scaleAnimation,
                                child: Image.asset(
                                  "assets/images/$image.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  })
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


