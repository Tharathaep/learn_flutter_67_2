//Step 4: sperate the Home widget into it own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // Step 5:container, column,main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   // mainAxisAlignment: MainAxisAlignment.start,
    //   // mainAxisAlignment: MainAxisAlignment.center,
    //   // mainAxisAlignment: MainAxisAlignment.end,
    //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [
    //     Container(
    //       color: Colors.pinkAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.pinkAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       color: Colors.pinkAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //       ),
    //     ),
    //   ],
    // );

    // Step 6: Image widget
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset("assets/images/IMG_2995.png", width: 150,height: 150,),
      const SizedBox(
        height: 10,),
        Image.network(
          "https://instagram.fbkk22-4.fna.fbcdn.net/v/t51.2885-15/503123588_18087194929728225_8407901525892717639_n.webp?efg=eyJ2ZW5jb2RlX3RhZyI6IkNBUk9VU0VMX0lURU0uaW1hZ2VfdXJsZ2VuLjE0NDB4MTkyMC5zZHIuZjc1NzYxLmRlZmF1bHRfaW1hZ2UifQ&_nc_ht=instagram.fbkk22-4.fna.fbcdn.net&_nc_cat=109&_nc_oc=Q6cZ2QF5qxzNwtWHVdFNnrparCfBAXbhBdet__YcFhryq8cb1yUF8iJwkD5dGYuZgK87-N8&_nc_ohc=wIsLSCBHZzEQ7kNvwEDoq51&_nc_gid=ilhJpTFJxz38KIvVySQ2VA&edm=AP4sbd4BAAAA&ccb=7-5&ig_cache_key=MzY0NjA4Mjc3NjAzMzYyNTQwNw%3D%3D.3-ccb7-5&oh=00_AfM0K66sS5I-Foe0jA9_RurHru25hxufqFDMF2yvgbhjeA&oe=685312CE&_nc_sid=7a9f4b",
          width: 150,
          height: 150,
        )],
    );
  }
}
