import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:project_johndev/app/presentation/global/colors/colors.dart';
import 'package:project_johndev/app/presentation/pages/home/widgets/button_home.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final sizeWidht = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: sizeWidht,
        height: sizeHeight,
        child:  const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TitlePresentationHome(),
              AvatarMainProfile()
            ],
          )
        ),
      )
    );
  }
}

class AvatarMainProfile extends StatelessWidget {
  const AvatarMainProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(500),
      child: SizedBox(
        width: 500,
        height: 500,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
          ),
          child: const FadeInImage(
            placeholder: AssetImage('assets/imgs/gif_loading.gif'), 
            image: AssetImage('assets/imgs/img_profile_john_g.png'),
            fit: BoxFit.cover,
            fadeOutDuration: Duration(seconds: 3),
            ),
        ),
      ),
    );
  }
}

class TitlePresentationHome extends StatelessWidget {
  const TitlePresentationHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInDown( child: Text('Hello 👋 ', style: TextStyle(fontSize: 30, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: primaryColor )  )),
        Row(children: [
          FadeInLeft(child: Text('I\'m ', style: TextStyle(fontSize: 55, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: primaryColor))),
          FadeInRight(child: Text('John Gómez', style: TextStyle(fontSize: 55, fontFamily: 'Inter', fontWeight: FontWeight.w800 , color: secondaryColor ))),
        ],),
        FadeInUp(child: Text('Software Developer 💻', style: TextStyle(fontSize: 30, fontFamily: 'Inter', fontWeight: FontWeight.w700, color: primaryColor))),

        SizedBox(
          height: 100,
          child: FadeInUpBig(
            child: const ButtonHome(),
          ),
        )
      ],
    );
  }
}