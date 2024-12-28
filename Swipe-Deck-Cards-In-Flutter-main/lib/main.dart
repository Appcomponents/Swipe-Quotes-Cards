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


const QUOTES = [
  "The only limit to our realization of tomorrow is our doubts of today.",
  "The future belongs to those who believe in the beauty of their dreams.",
  "It does not matter how slowly you go as long as you do not stop.",
  "Act as if what you do makes a difference. It does.",
  "Success is not final, failure is not fatal: It is the courage to continue that counts.",
  "You are never too old to set another goal or to dream a new dream.",
  "The way to get started is to quit talking and begin doing.",
  "The pessimist sees difficulty in every opportunity. The optimist sees opportunity in every difficulty.",
  "Don’t watch the clock; do what it does. Keep going.",
  "You miss 100% of the shots you don’t take.",
  "In the middle of difficulty lies opportunity.",
  "Life is what happens when you’re busy making other plans.",
  "The purpose of life is not to be happy. It is to be useful, to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.",
  "You have to be odd to be number one.",
  "Keep your face always toward the sunshine—and shadows will fall behind you.",
  "It always seems impossible until it’s done.",
  "The secret of getting ahead is getting started.",
  "The only way to do great work is to love what you do.",
  "Success usually comes to those who are too busy to be looking for it.",
  "Don’t wait for the perfect moment. Take the moment and make it perfect.",
  "Success is the sum of small efforts, repeated day in and day out.",
  "A goal without a plan is just a wish.",
  "The successful warrior is the average man, with laser-like focus.",
  "Don’t be afraid to give up the good to go for the great.",
  "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
  "Life is not measured by the number of breaths we take, but by the moments that take our breath away.",
  "Hardships often prepare ordinary people for an extraordinary destiny.",
  "Opportunities don't happen. You create them.",
  "The best revenge is massive success.",
  "Don't count the days. Make the days count.",
  "Everything you can imagine is real.",
  "Nothing in the world can take the place of Persistence. Talent will not; nothing is more common than unsuccessful men with talent.",
  "The secret to getting ahead is getting started.",
  "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.",
  "Believe you can and you're halfway there.",
  "If you're going through hell, keep going.",
  "Success is walking from failure to failure with no loss of enthusiasm.",
  "I find that the harder I work, the more luck I seem to have.",
  "You don’t have to be great to start, but you have to start to be great.",
  "The best way to predict the future is to create it.",
  "You can never plan the future by the past.",
  "There are no limits to what you can accomplish, except the limits you place on your own thinking.",
  "The way to get started is to quit talking and begin doing.",
  "Success is not in what you have, but who you are.",
  "The harder the conflict, the greater the triumph.",
  "I never dreamed about success. I worked for it.",
  "Success is not how high you have climbed, but how you make a positive difference to the world.",
  "The best preparation for tomorrow is doing your best today.",
  "When you cease to dream, you cease to live.",
  "Success doesn’t just find you. You have to go out and get it.",
  "In order to succeed, your desire for success should be greater than your fear of failure.",
  "Success is the progressive realization of a worthy goal or ideal.",
  "If you want to achieve greatness stop asking for permission.",
  "Don’t be pushed around by the fears in your mind. Be led by the dreams in your heart.",
  "You have to learn the rules of the game. And then you have to play better than anyone else.",
  "The only way to achieve the impossible is to believe it is possible.",
  "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.",
  "The future belongs to those who prepare for it today.",
  "Success is not final, failure is not fatal: It is the courage to continue that counts.",
  "You miss 100% of the shots you don’t take.",
  "To succeed in life, you need two things: ignorance and confidence.",
  "The way to get started is to quit talking and begin doing.",
  "I never dreamed about success. I worked for it.",
  "What you get by achieving your goals is not as important as what you become by achieving your goals.",
  "Success is not the key to happiness. Happiness is the key to success.",
  "Success is a journey, not a destination.",
  "Success usually comes to those who are too busy to be looking for it.",
  "Success is the result of perfection, hard work, learning from failure, loyalty, and persistence.",
  "There are no shortcuts to any place worth going.",
  "Success is the sum of small efforts, repeated day in and day out.",
  "Success is how high you bounce when you hit bottom.",
  "The only place where success comes before work is in the dictionary.",
  "Don't watch the clock; do what it does. Keep going.",
  "Success doesn’t come from what you do occasionally, it comes from what you do consistently.",
  "Success is not just about making money; it's about making a difference.",
  "The difference between who you are and who you want to be is what you do.",
  "The only way to do great work is to love what you do.",
  "If you are not willing to risk the usual, you will have to settle for the ordinary.",
  "You can’t build a reputation on what you are going to do.",
  "Don’t wait for the perfect moment. Take the moment and make it perfect.",
  "I find that the harder I work, the more luck I seem to have.",
  "Opportunities don't happen. You create them.",
  "The road to success and the road to failure are almost exactly the same.",
  "To be successful, you must act big, think big and talk big.",
  "If you’re not making mistakes, then you’re not making decisions.",
  "The harder I work, the luckier I get.",
  "There are no secrets to success. It is the result of preparation, hard work, and learning from failure.",
  "The only limit to our realization of tomorrow is our doubts of today.",
  "Don’t let yesterday take up too much of today.",
  "Start where you are. Use what you have. Do what you can.",
  "Do not wait to strike till the iron is hot, but make it hot by striking.",
  "The best way to predict the future is to create it.",
  "Do what you can, with what you have, where you are.",
  "You are never too old to set another goal or to dream a new dream.",
  "The only place where success comes before work is in the dictionary.",
  "Success doesn’t just find you. You have to go out and get it.",
  "The secret to success is consistency of purpose.",
  "What you do today can improve all your tomorrows.",
  "Dream big and dare to fail.",
  "Success is a lousy teacher. It seduces smart people into thinking they can’t lose.",
  "The harder the battle, the sweeter the victory.",
  "Don’t be afraid to give up the good to go for the great.",
  "Success is liking yourself, liking what you do, and liking how you do it.",
  "Success doesn’t come from what you do occasionally, it comes from what you do consistently.",
  "Start where you are. Use what you have. Do what you can.",
  "Success is the ability to go from failure to failure without losing your enthusiasm.",
  "Believe you can and you're halfway there.",
  "Success is not the key to happiness. Happiness is the key to success.",
  "The road to success is always under construction.",
  "Opportunities are never lost; someone will take the ones you miss.",
  "You don’t have to be great to start, but you have to start to be great.",
  "Success is the sum of small efforts, repeated day in and day out.",
  "Success is a journey, not a destination.",
  "Don’t wait. The time will never be just right.",
  "The way to get started is to quit talking and begin doing.",
  "Success usually comes to those who are too busy to be looking for it.",
  "The only place where success comes before work is in the dictionary.",
  "Success is not final, failure is not fatal: It is the courage to continue that counts.",
  "The best way to predict the future is to create it.",
  "Success is how high you bounce when you hit bottom.",
  "Success doesn't just happen, it's made.",
  "What we fear of doing most is usually what we most need to do.",
  "The only limit to our realization of tomorrow is our doubts of today."
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
          "Quote Cards",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 1.6,
          ),
        ),
        centerTitle: true,
      ),
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
          // AnimatedBackground(
          //   behaviour: RandomParticleBehaviour(
          //     options: const ParticleOptions(
          //       spawnMaxRadius: 50,
          //       spawnMinSpeed: 10.00,
          //       particleCount: 8,
          //       spawnMaxSpeed: 50,
          //       minOpacity: 0.3,
          //       spawnOpacity: 0.4,
          //       baseColor: Colors.orange,
          //       image: Image(image: AssetImage('assets/images/VP24.png')),
          //     ),
          //   ),
          //   vsync: this,
          //   child: Container(), // Empty container to overlay the animation
          // ),
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
                  aspectRatio: 8 / 8,
                  startIndex: 0,
                  emptyIndicator: const Center(child: Text("Nothing Here")),
                //  cardSpreadInDegrees: 15,
               // baseColor: Colors.blue,

                  onSwipeLeft: () {
                    print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                  },
                  onSwipeRight: () {
                    print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                  },
                  onChange: (index) {
                    print(QUOTES[index]);
                  },
                  widgets: QUOTES
                      .asMap()
                      .entries
                      .map((entry) {
                        int index = entry.key;
                        String quote = entry.value;
                        return GestureDetector(
                          onTap: () {
                            print(quote);
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
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: borderRadius,
                      side: BorderSide(
                        color: Colors.white, // White border color
                        width: 1.5,          // Border width
                      ),
                                      ),
                                       color: Colors.purple,
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Center(
                                          child: Text(
                                            quote,
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: const Color.fromARGB(255, 255, 255, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
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


