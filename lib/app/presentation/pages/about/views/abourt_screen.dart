import 'package:flutter/material.dart';
import 'package:project_johndev/app/infrastructure/models/aboutme.dart';
import 'package:project_johndev/app/presentation/global/colors/colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeWidht = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SizedBox(
            width: sizeWidht,
            height: sizeHeight,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: sizeHeight * 0.15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        const NameSummaryAbout(),
                        Spacer(),
                        ParagraphAboutMe(sizeWidht: sizeWidht)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
            
                  ExperiencieWidget(sizeHeight: sizeHeight, sizeWidht: sizeWidht)
                ],
              ),
            )
        ));
  }
}

class ExperiencieWidget extends StatelessWidget {
  const ExperiencieWidget({
    super.key,
    required this.sizeHeight,
    required this.sizeWidht,
  });

  final double sizeHeight;
  final double sizeWidht;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeHeight * 0.5,
      width: sizeWidht,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EXPERIENCIE', style: TextStyle(fontFamily: 'Inter', fontSize: 18, fontWeight: FontWeight.w700  ), ),
            Text('My working experience', style: TextStyle(fontFamily: 'Inter', fontSize: 25, fontWeight: FontWeight.w700  ), )
          ],
        ),
      ),
    );
  }
}


class ParagraphAboutMe extends StatelessWidget {
  const ParagraphAboutMe({
    super.key,
    required this.sizeWidht,
  });

  final double sizeWidht;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWidht * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Hello, my name is John Gomez. I am a software developer passionate about learning and applying the knowledge I\'ve acquired to build projects that have a positive impact on our society.',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.normal,
            color: primaryColor),
          ),
          const SizedBox(height: 20),
          Text('With nearly 2 years of experience, I have focused my work on developing web and mobile applications, primarily in the university and collaborative educational sector. However, I have no issues getting involved in other projects, which has allowed me to develop skills that contribute to building successful, high-impact projects. I believe that interacting with other teams is important for both professional and personal growth.',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.normal,
            color: primaryColor),
          ),
          
    
        ],
      ),
    );
  }
}

class NameSummaryAbout extends StatelessWidget {
  const NameSummaryAbout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('John Gómez',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w900,
                color: primaryColor)),
        Text('Software Developer',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.normal,
                color: primaryColor)),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(100, 50),
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7))),
            child: const Text('View Projects',
                style: TextStyle(color: Colors.white))),
      ],
    );
  }
}
