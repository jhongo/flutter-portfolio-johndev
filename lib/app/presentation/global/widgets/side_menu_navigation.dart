import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_johndev/app/infrastructure/models/navigation.dart';
import 'package:project_johndev/app/presentation/global/colors/colors.dart';
import 'package:project_johndev/app/presentation/services/navigation_service.dart';


class SideMenuNavegation extends StatelessWidget {
  const SideMenuNavegation({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeWidth,
      height: sizeHeight,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SideHeaderAvatar(),
          ItemNavigation(),
          const FooterDetailsSide()

        ],
      ),
    );
  }
}

class FooterDetailsSide extends StatelessWidget {
  const FooterDetailsSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed:(){}, icon: const FaIcon(FontAwesomeIcons.linkedinIn)),
            IconButton(onPressed:(){}, icon: const FaIcon(FontAwesomeIcons.xTwitter)),
            IconButton(onPressed:(){}, icon: const FaIcon(FontAwesomeIcons.github))
          ],
        ), 
        const Text('© 2024 John Gómez. All rights reserved.', style: TextStyle(fontSize: 12, fontFamily: 'Inter', fontStyle: FontStyle.normal)),
      ],
    );
  }
}

class ItemNavigation extends ConsumerWidget {
   ItemNavigation({
    super.key,
  });

  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final valueSelect = ref.watch(initNav);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        navigation.length, (index) {
          final conditional = valueSelect == navigation[index].index;
          final TextStyle styleItemMenu =  TextStyle(fontSize: (conditional) ? 19 :17 , 
          fontFamily: 'Inter', 
          fontStyle: FontStyle.normal, 
          color: (conditional) ? const Color(0xFF219ebc) : Colors.black,
          fontWeight: (conditional) ? FontWeight.w600 : FontWeight.normal
           );

          return ListTile(
            hoverColor: hoverMenucItem.withOpacity(0.5),
            mouseCursor: SystemMouseCursors.grab,
            visualDensity: VisualDensity.comfortable,
            splashColor: hoverMenucItem.withOpacity(0.7),
            title: Center(child: Text(navigation[index].title, style: styleItemMenu)),
            onTap: () => ref.watch(initNav.notifier).state = navigation[index].index,
            

          );
        }
        
        )
    );
  }
}

class SideHeaderAvatar extends StatelessWidget {
  const SideHeaderAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: sizeWidth,
      height: sizeHeight * 0.2,
      child: const Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/imgs/img_profile_john_g.png'),
          ),
          SizedBox(height: 10),
          Text('John Gómez', style: TextStyle(fontSize: 22, fontFamily: 'Inter', fontStyle: FontStyle.normal)),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

