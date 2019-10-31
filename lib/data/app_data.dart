class Watch {
  final String imageUrl;
  final String title;
  final String subTitle;

  Watch(
    this.imageUrl,
    this.title,
    this.subTitle,
  );
}

class Info {
  final String imageUrl;
  final String title;
  final String subTitle;

  Info(
    this.imageUrl,
    this.title,
    this.subTitle,
  );
}

class ExpandedData {
  final String title;
  final String subtitle;

  ExpandedData(this.title, this.subtitle);
}

class AppData {
  static List<Watch> watches = [
    Watch('assets/images/watch1.png', 'Bell & Ross', 'BR-X1'),
    Watch('assets/images/watch2.png', 'U-Boat', '46 SS'),
    Watch('assets/images/watch3.png', 'Bell & Ross', 'BR S'),
    Watch('assets/images/watch4.png', 'Bell & Ross', 'BR-X2'),
  ];

  static List<Info> info = [
    Info('assets/images/tape.png', '46 mm', 'diameter'),
    Info('assets/images/tape.png', '50 m', 'water resistance'),
    Info('assets/images/bolt.png', '48 hr', 'power reserve'),
  ];

  static List<ExpandedData> expandedData = [
    ExpandedData('Movement:',
        'Automatic chronograph modified and personalized at U-BOAT specification. Personalized rotor, in silver, built with a base and 3 bridges fixed with blued screws. Frequency 28,800 vibration per hour, 4 Hz Power reserve: 48 hours, 25 jewels.'),
    ExpandedData('Functions:', 'Hours, minutes, seconds, chronograph, 24h indicator, date'),
    ExpandedData('Case',
        'Case body, back case, bezel ring in forged carbon, components in titanium, diameter 46 mm. The bezel and case back are locked together by external tubing and a customised key that ensures total waterproofing. Distinguishing crown on left side, with a patented protective device.'),
    ExpandedData('Dial:',
        'Skeleton dial with four superimposed levels, with the last layer made of laser cut fine stainless steel wire mesh, partially revealing the movement.'),
  ];
}
