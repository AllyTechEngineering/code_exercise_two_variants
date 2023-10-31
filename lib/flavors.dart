enum Flavor {
  simpsonsCharViewer,
  wireCharViewer,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.simpsonsCharViewer:
        return 'Simpsons Character Viewer';
      case Flavor.wireCharViewer:
        return 'Wire Character Viewer';
      default:
        return 'title';
    }
  }

  static String get apiHost {
    switch (appFlavor) {
      case Flavor.simpsonsCharViewer:
        return 'http://api.duckduckgo.com/?q=simpsons+characters&format=json';
      case Flavor.wireCharViewer:
        return 'http://api.duckduckgo.com/?q=the+wire+characters&format=json';
      default:
        return 'http://api.duckduckgo.com';
    }
  }
}
