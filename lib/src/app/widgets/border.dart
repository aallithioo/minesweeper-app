import 'package:flutter/material.dart';

import '../themes/size.dart';

class SetBorder {
  // all
  static const BorderRadius radiusAllTiny = BorderRadius.all(
    Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusAllSmall = BorderRadius.all(
    Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusAllMedium = BorderRadius.all(
    Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusAllLarge = BorderRadius.all(
    Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusAllHuge = BorderRadius.all(
    Radius.circular(
      SetSize.huge,
    ),
  );

  // top left
  static const BorderRadius radiusTopLeftTiny = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusTopLeftSmall = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusTopLeftMedium = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusTopLeftLarge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusTopLeftHuge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.huge,
    ),
  );

  // top right
  static const BorderRadius radiusTopRightTiny = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusTopRightSmall = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusTopRightMedium = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusTopRightLarge = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusTopRightHuge = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.huge,
    ),
  );

  // bottom left
  static const BorderRadius radiusBottomLeftTiny = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusBottomLeftSmall = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusBottomLeftMedium = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusBottomLeftLarge = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusBottomLeftHuge = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.huge,
    ),
  );

  // bottom right
  static const BorderRadius radiusBottomRightTiny = BorderRadius.only(
    bottomRight: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusBottomRightSmall = BorderRadius.only(
    bottomRight: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusBottomRightMedium = BorderRadius.only(
    bottomRight: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusBottomRightLarge = BorderRadius.only(
    bottomRight: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusBottomRightHuge = BorderRadius.only(
    bottomRight: Radius.circular(
      SetSize.huge,
    ),
  );

  // top
  static const BorderRadius radiusTopTiny = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.tiny,
    ),
    topRight: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusTopSmall = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.small,
    ),
    topRight: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusTopMedium = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.medium,
    ),
    topRight: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusTopLarge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.large,
    ),
    topRight: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusTopHuge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.huge,
    ),
    topRight: Radius.circular(
      SetSize.huge,
    ),
  );

  // bottom
  static const BorderRadius radiusBottomTiny = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.tiny,
    ),
    bottomRight: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusBottomSmall = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.small,
    ),
    bottomRight: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusBottomMedium = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.medium,
    ),
    bottomRight: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusBottomLarge = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.large,
    ),
    bottomRight: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusBottomHuge = BorderRadius.only(
    bottomLeft: Radius.circular(
      SetSize.huge,
    ),
    bottomRight: Radius.circular(
      SetSize.huge,
    ),
  );

  // left
  static const BorderRadius radiusLeftTiny = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.tiny,
    ),
    bottomLeft: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusLeftSmall = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.small,
    ),
    bottomLeft: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusLeftMedium = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.medium,
    ),
    bottomLeft: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusLeftLarge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.large,
    ),
    bottomLeft: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusLeftHuge = BorderRadius.only(
    topLeft: Radius.circular(
      SetSize.huge,
    ),
    bottomLeft: Radius.circular(
      SetSize.huge,
    ),
  );

  // right
  static const BorderRadius radiusRightTiny = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.tiny,
    ),
    bottomRight: Radius.circular(
      SetSize.tiny,
    ),
  );
  static const BorderRadius radiusRightSmall = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.small,
    ),
    bottomRight: Radius.circular(
      SetSize.small,
    ),
  );
  static const BorderRadius radiusRightMedium = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.medium,
    ),
    bottomRight: Radius.circular(
      SetSize.medium,
    ),
  );
  static const BorderRadius radiusRightLarge = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.large,
    ),
    bottomRight: Radius.circular(
      SetSize.large,
    ),
  );
  static const BorderRadius radiusRightHuge = BorderRadius.only(
    topRight: Radius.circular(
      SetSize.huge,
    ),
    bottomRight: Radius.circular(
      SetSize.huge,
    ),
  );
}
