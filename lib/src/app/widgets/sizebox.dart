import 'package:flutter/material.dart';

import '../themes/size.dart';

class SetSizeBox {
  // vertical
  static const verticalTiny = SizedBox(
    height: SetSize.tiny,
  );
  static const verticalSmall = SizedBox(
    height: SetSize.small,
  );
  static const verticalMedium = SizedBox(
    height: SetSize.medium,
  );
  static const verticalLarge = SizedBox(
    height: SetSize.large,
  );
  static const verticalHuge = SizedBox(
    height: SetSize.huge,
  );

  // horizontal
  static const horizontalTiny = SizedBox(
    width: SetSize.tiny,
  );
  static const horizontalSmall = SizedBox(
    width: SetSize.small,
  );
  static const horizontalMedium = SizedBox(
    width: SetSize.medium,
  );
  static const horizontalLarge = SizedBox(
    width: SetSize.large,
  );
  static const horizontalHuge = SizedBox(
    width: SetSize.huge,
  );
}
