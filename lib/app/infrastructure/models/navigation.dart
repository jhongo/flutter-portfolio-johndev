


class Navigation{

  final String title;
  final int index;
  final active;

  Navigation({required this.title, required this.index, required this.active}); 
  
}


final List<Navigation> navigation = [
  Navigation(title: 'Home', index: 0, active: false),
  Navigation(title: 'About', index: 1, active: false),
  Navigation(title: 'Services', index: 2, active: false),
  Navigation(title: 'Portfolio', index: 3, active: false),
  Navigation(title: 'Blog', index: 4, active: false),
  Navigation(title: 'Contact', index: 5, active: false),
];