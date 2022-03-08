import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:profile_ui/stat_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomaPage(),
    );
  }
}

class HomaPage extends StatefulWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  String avatarUrl =
      "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/269594063_5036645519713585_1551517188338550225_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeFWREp36XSyP2zavUbirwVaD0YFShlf7rIPRgVKGV_usmxCS4eJFneIN2XBbvN0FJLP-Y64PhV1H2qVjaiJ0KCZ&_nc_ohc=2uE2m3w5t5UAX-UbPdC&tn=aMK8uBlSn4mpZAj4&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT984azLD2JFQEZxFSwIYWqhn-dZ37Alnt2ctt5uw7udtA&oe=622B6715";
  List<String> imagePost = [
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/273100134_5198508976860571_5850965071732759770_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeExg9Yw4hu0skKy1bHZI7zH7S37lidbWH3tLfuWJ1tYfd9c602k1mTGZ3OA6FOxMNp81kD6981dY2sae_sJKauh&_nc_ohc=Nilxgiqd6dEAX-OzaQi&tn=aMK8uBlSn4mpZAj4&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT9GS11x9ys7vVKBrllzuJ9Wnt3OTBaSa5nHX1XiXZ418Q&oe=622ADDB2",
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/272897862_5195027277208741_7789368124818458927_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGc1qjYG1_-U0E4BMD5n_FYB25l3bfqumAHbmXdt-q6YGpKTQJ6ZfJq33AxyvGmCQwYQKT3oQ5DOze_s0_gNTAo&_nc_ohc=_rrrLMAoCI8AX-btdym&tn=aMK8uBlSn4mpZAj4&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT9vweT9WLDPXLp1mYIVzY4IiAbrtiN5b_kE97Rr-GuL2g&oe=622CA9DB",
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/271759478_5123908054320664_3912274620765857209_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=8bfeb9&_nc_eui2=AeE7X9aZAsS9_Fg4lsQKLHz4shHhKRY8deayEeEpFjx15nRmZ_1TzbN5A04YGOWYpEhUS5GnVkwq143r3QrqO_Uu&_nc_ohc=PUEHnlT7nMsAX-5V0vo&tn=aMK8uBlSn4mpZAj4&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT9YG_fVj7r9fBdp6SymL2WKFkiiHZxQDLKAANZ5sI4Okw&oe=622BA2DA",
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/272736576_5198511616860307_7540930562953949789_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeH_q2WxR-6fqtaWrlu3G4gs1yXfcstMG__XJd9yy0wb_-WxPbU9JZcQuOF3u7AWk-KfUsUMjx_FmYrOCCg33f4q&_nc_ohc=Z1owOBUis-oAX84eSm6&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT-Jb5mn6Y7_kfWYS77QY0Hl96aGiMWSCts5r9JzdrrQCg&oe=622C3052",
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/268397227_5041350889243048_1063309166409241216_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=174925&_nc_eui2=AeHaxECtZGD6aVo9mwUve9uScdw8JIJnx9hx3DwkgmfH2KrtbEmmmxDW8_YdOs4YJfmNNMVphLeFOfax96droWPV&_nc_ohc=qKDdVXxV4m4AX9PAbuw&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT99ydCVSn8vBG7phYlm_GMsCuXWAQORNDxleY1gbtyvRQ&oe=622C9E3E",
    "https://scontent.ftpq1-1.fna.fbcdn.net/v/t39.30808-6/260163080_4965488176829320_5321752597183743195_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=174925&_nc_eui2=AeFA9J3CSTn5oYrM61gO-0yMEVK4LxqQw1QRUrgvGpDDVBx8WAiOw1hdrMCSnvzjqbLotrOE2Z9H4heosBoUllC3&_nc_ohc=nhaUL-Y1KwYAX-3Z2y4&_nc_ht=scontent.ftpq1-1.fna&oh=00_AT8-kj7LBnRMNOIyMmCLDLRxdF4f_Yco_jPe5MSSXbJWFg&oe=622B7847"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Perfil',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 36,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Alexis Hernández",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              "@AlexisHer",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                StateWidget(
                  title: "Post",
                  stat: "2",
                ),
                StateWidget(
                  title: "Followers",
                  stat: "110k",
                ),
                StateWidget(
                  title: "Follow",
                  stat: "11k",
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 8.0)),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Message',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 8.0)),
                )
              ],
            ),
            const Divider(
              height: 18.0,
              thickness: 0.6,
              color: Colors.black87,
            ),
            Expanded(
                child: Center(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: imagePost.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(imagePost[index]))),
                          ),
                        );
                      })),
            )) // Tex // Text
          ],
        ),
      ),
    );
  }
}
