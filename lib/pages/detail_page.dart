import 'package:flutter/material.dart';
import 'package:ytadvanced/widgets/app_buttons.dart';
import 'package:ytadvanced/widgets/app_text.dart';
import 'package:ytadvanced/widgets/app_text_large.dart';
import 'package:ytadvanced/widgets/responsive_btn.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/mountain.jpeg'),
                    fit: BoxFit.cover,
                  )),
                )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),
            Positioned(
              top: 320,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppTextLarge(
                          text: 'Yosemite',
                          color: Colors.black54.withOpacity(0.8),
                        ),
                        AppTextLarge(
                          text: '\$ 250',
                          color: Color(0xff5c66bd),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff5c66bd),
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: 'USA California',
                          color: Color(0xff5c66bd).withOpacity(0.7),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? Colors.yellow
                                    : Colors.grey.withOpacity(0.8));
                          }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: '(' + gottenStars.toString() + '.0)',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppTextLarge(
                      text: 'People',
                      size: 20,
                      color: Colors.black54.withOpacity(0.8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppText(text: 'Number of people in your group'),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : Color(0xff5c66bd).withOpacity(0.1),
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : Color(0xff5c66bd).withOpacity(0.1),
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppTextLarge(
                      text: 'Description',
                      size: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppText(
                        text:
                            'dolorum, praesentium tempora debitis reiciendis laudantium et animi unde quo amet eum officiis distinctio.'),
                  ],
                ),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(
                        size: 60,
                        color: Color(0xff5c66bd).withOpacity(0.5),
                        backgroundColor: Colors.white,
                        borderColor: Color(0xff5c66bd).withOpacity(0.5),
                        isIcon: true,
                        icon: Icons.favorite_border,
                    ),
                    SizedBox(width: 10,),
                    ResponsiveButton(
                     isResponsive: true,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
