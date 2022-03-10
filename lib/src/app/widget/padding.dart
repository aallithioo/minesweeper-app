import 'package:flutter/material.dart';

import '../theme/size.dart';

class SetPadding {
  static Map all = {
    'xs': EdgeInsets.all(SetSize.xs),
    'sm': EdgeInsets.all(SetSize.sm),
    'md': EdgeInsets.all(SetSize.md),
    'lg': EdgeInsets.all(SetSize.lg),
    'xl': EdgeInsets.all(SetSize.xl),
  };

  static Map horizontal = {
    'xs': EdgeInsets.symmetric(horizontal: SetSize.xs),
    'sm': EdgeInsets.symmetric(horizontal: SetSize.sm),
    'md': EdgeInsets.symmetric(horizontal: SetSize.md),
    'lg': EdgeInsets.symmetric(horizontal: SetSize.lg),
    'xl': EdgeInsets.symmetric(horizontal: SetSize.xl),
  };

  static Map vertical = {
    'xs': EdgeInsets.symmetric(vertical: SetSize.xs),
    'sm': EdgeInsets.symmetric(vertical: SetSize.sm),
    'md': EdgeInsets.symmetric(vertical: SetSize.md),
    'lg': EdgeInsets.symmetric(vertical: SetSize.lg),
    'xl': EdgeInsets.symmetric(vertical: SetSize.xl),
  };

  static Map left = {
    'xs': EdgeInsets.only(left: SetSize.xs),
    'sm': EdgeInsets.only(left: SetSize.sm),
    'md': EdgeInsets.only(left: SetSize.md),
    'lg': EdgeInsets.only(left: SetSize.lg),
    'xl': EdgeInsets.only(left: SetSize.xl),
  };

  static Map right = {
    'xs': EdgeInsets.only(right: SetSize.xs),
    'sm': EdgeInsets.only(right: SetSize.sm),
    'md': EdgeInsets.only(right: SetSize.md),
    'lg': EdgeInsets.only(right: SetSize.lg),
    'xl': EdgeInsets.only(right: SetSize.xl),
  };

  static Map top = {
    'xs': EdgeInsets.only(top: SetSize.xs),
    'sm': EdgeInsets.only(top: SetSize.sm),
    'md': EdgeInsets.only(top: SetSize.md),
    'lg': EdgeInsets.only(top: SetSize.lg),
    'xl': EdgeInsets.only(top: SetSize.xl),
  };

  static Map bottom = {
    'xs': EdgeInsets.only(bottom: SetSize.xs),
    'sm': EdgeInsets.only(bottom: SetSize.sm),
    'md': EdgeInsets.only(bottom: SetSize.md),
    'lg': EdgeInsets.only(bottom: SetSize.lg),
    'xl': EdgeInsets.only(bottom: SetSize.xl),
  };

  static Map topLeft = {
    'xs': EdgeInsets.only(top: SetSize.xs, left: SetSize.xs),
    'sm': EdgeInsets.only(top: SetSize.sm, left: SetSize.sm),
    'md': EdgeInsets.only(top: SetSize.md, left: SetSize.md),
    'lg': EdgeInsets.only(top: SetSize.lg, left: SetSize.lg),
    'xl': EdgeInsets.only(top: SetSize.xl, left: SetSize.xl),
  };

  static Map topRight = {
    'xs': EdgeInsets.only(top: SetSize.xs, right: SetSize.xs),
    'sm': EdgeInsets.only(top: SetSize.sm, right: SetSize.sm),
    'md': EdgeInsets.only(top: SetSize.md, right: SetSize.md),
    'lg': EdgeInsets.only(top: SetSize.lg, right: SetSize.lg),
    'xl': EdgeInsets.only(top: SetSize.xl, right: SetSize.xl),
  };

  static Map bottomLeft = {
    'xs': EdgeInsets.only(bottom: SetSize.xs, left: SetSize.xs),
    'sm': EdgeInsets.only(bottom: SetSize.sm, left: SetSize.sm),
    'md': EdgeInsets.only(bottom: SetSize.md, left: SetSize.md),
    'lg': EdgeInsets.only(bottom: SetSize.lg, left: SetSize.lg),
    'xl': EdgeInsets.only(bottom: SetSize.xl, left: SetSize.xl),
  };

  static Map bottomRight = {
    'xs': EdgeInsets.only(bottom: SetSize.xs, right: SetSize.xs),
    'sm': EdgeInsets.only(bottom: SetSize.sm, right: SetSize.sm),
    'md': EdgeInsets.only(bottom: SetSize.md, right: SetSize.md),
    'lg': EdgeInsets.only(bottom: SetSize.lg, right: SetSize.lg),
    'xl': EdgeInsets.only(bottom: SetSize.xl, right: SetSize.xl),
  };

  static manual(double top, double left, double bottom, double right) {
    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }
}
