import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ytadvanced/widgets/app_text.dart';
import 'package:ytadvanced/widgets/app_text_large.dart';
import 'package:ytadvanced/widgets/responsive_btn.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List img = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];
  List title = [
    'PR is bored',
    'yushiu is funny',
    'danny is musician'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/'+img[index]
                  ),
                    fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextLarge(text: title[index]),
                        AppText(text: 'Mountain'),
                        SizedBox(height: 20,),
                        Container(
                          width: 220,
                          child: AppText(
                            text: "dasdasdsadsadsdasdsadasdsadasdsadsadasdasdsadghbrthktrbotrbtrbtirobrtb",
                            color: Colors.blueGrey,
                            size: 14,
                          ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 120,)
                      ],    
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDots ? 25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                              color: index == indexDots ? Color(0xff5c66bd):Color(0x885c66bd),
                          ),
                        );
                      })
                    )
                  ],
                  
                ),
              ),
            );
          }),
    );
  }
}
