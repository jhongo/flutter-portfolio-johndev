import 'package:flutter/material.dart';
import 'package:project_johndev/app/presentation/routes/app_routes.dart';
import 'package:project_johndev/app/presentation/routes/routes.dart';


class MyAppProfile extends StatelessWidget {
  const MyAppProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.hub,
      routes: appRoutes,
    );
  }
}