class SetScreenScope {
  static Map mobile = {
    'potrait': 480,
    'landscape': 840,
  };

  static Map tablet = {
    'potrait': 480,
    'landscape': 1200,
  };

  static Map desktop = {
    'potrait': 840,
    'landscape': 1200,
  };
}

// mobileScreenScope (0px - 480px width)
// tabletScreenScope (480px - 840px width)
// desktopScreenScope (840px -  width)

// mobilePortraitScreenScope (0px - 480px width, portrait)
// tabletPortraitScreenScope (480px - 840px width, portrait)
// desktopPortraitScreenScope (840px - width, portrait)

// mobileLandscapeScreenScope (0px - 840px width, landscape)
// tabletLandscapeScreenScope (840px - 1200px width, landscape)
// desktopLandscapeScreenScope (1200px - width, landscape)