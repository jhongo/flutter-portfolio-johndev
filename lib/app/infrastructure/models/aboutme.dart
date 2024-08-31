import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe {

  final String data;
  final FaIcon icon;
  final String url;

  AboutMe(this.data, this.icon, this.url);

}

final List<AboutMe> aboutMe = [

  AboutMe('Ecuador - Azuay', FaIcon(FontAwesomeIcons.locationDot), ''  ),
  AboutMe('jhongomez042000@gmail.com', const FaIcon(FontAwesomeIcons.envelope), ''  ),
  AboutMe('+593 958983021', const FaIcon(FontAwesomeIcons.mobile), ''  ),

];