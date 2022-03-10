import 'package:flutter/material.dart';

import '../theme/size.dart';

class SetSizeBox {
  static Map all = {
    'xs': SizedBox(width: SetSize.xs, height: SetSize.xs),
    'sm': SizedBox(width: SetSize.sm, height: SetSize.sm),
    'md': SizedBox(width: SetSize.md, height: SetSize.md),
    'lg': SizedBox(width: SetSize.lg, height: SetSize.lg),
    'xl': SizedBox(width: SetSize.xl, height: SetSize.xl),
  };

  static Map vertical = {
    'xs': SizedBox(height: SetSize.xs),
    'sm': SizedBox(height: SetSize.sm),
    'md': SizedBox(height: SetSize.md),
    'lg': SizedBox(height: SetSize.lg),
    'xl': SizedBox(height: SetSize.xl),
  };

  static Map horizontal = {
    'xs': SizedBox(width: SetSize.xs),
    'sm': SizedBox(width: SetSize.sm),
    'md': SizedBox(width: SetSize.md),
    'lg': SizedBox(width: SetSize.lg),
    'xl': SizedBox(width: SetSize.xl),
  };
}
