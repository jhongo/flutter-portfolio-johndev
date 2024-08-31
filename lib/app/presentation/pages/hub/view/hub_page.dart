import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_johndev/app/presentation/global/widgets/side_menu_navigation.dart';
import 'package:project_johndev/app/presentation/pages/pages.dart';
import 'package:project_johndev/app/presentation/services/navigation_service.dart';


class HubPage extends ConsumerWidget {
  
  HubPage({super.key});

  final List<Widget> _pages = [
    const HomeScreen(),
    const AboutScreen(),
    const ServiceScreen(),
    const PortfolioScreen(),
    const BlogScreen(), 
    const ContactScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref ) {

    final sizeWidht = MediaQuery.of(context).size.width;
    final sizeHeight = MediaQuery.of(context).size.height;

    final option = ref.watch(initNav);

    return Scaffold(
      body: SizedBox(
        width: sizeWidht,
        height: sizeHeight,
        child: Row(
          children: [
            SizedBox(
              width: sizeWidht * 0.2,
              child: const SideMenuNavegation(),
            ),
            SizedBox(
              width: sizeWidht * 0.8,
              child:  IndexedStack(
                index: option,
                children: _pages ,
              ),
            ),
          ],
        )
      )
      
    );
  }
}