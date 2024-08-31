
import 'package:flutter/material.dart';
import 'package:project_johndev/app/presentation/pages/hub/view/hub_page.dart';
import 'package:project_johndev/app/presentation/routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {

  Routes.hub: (context) => HubPage()

};