import 'package:flutter/material.dart';

import '../theme/size.dart';

class SetBorder {
  static Map all = {
    'xs': BorderRadius.circular(SetSize.xs),
    'sm': BorderRadius.circular(SetSize.sm),
    'md': BorderRadius.circular(SetSize.md),
    'lg': BorderRadius.circular(SetSize.lg),
    'xl': BorderRadius.circular(SetSize.xl),
  };

  static Map bottom = {
    'xs': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.xs),
      bottomRight: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.sm),
      bottomRight: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.md),
      bottomRight: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.lg),
      bottomRight: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.xl),
      bottomRight: Radius.circular(SetSize.xl),
    ),
  };

  static Map top = {
    'xs': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xs),
      topRight: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      topLeft: Radius.circular(SetSize.sm),
      topRight: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      topLeft: Radius.circular(SetSize.md),
      topRight: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      topLeft: Radius.circular(SetSize.lg),
      topRight: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xl),
      topRight: Radius.circular(SetSize.xl),
    ),
  };

  static Map left = {
    'xs': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xs),
      bottomLeft: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      topLeft: Radius.circular(SetSize.sm),
      bottomLeft: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      topLeft: Radius.circular(SetSize.md),
      bottomLeft: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      topLeft: Radius.circular(SetSize.lg),
      bottomLeft: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xl),
      bottomLeft: Radius.circular(SetSize.xl),
    ),
  };

  static Map right = {
    'xs': BorderRadius.only(
      topRight: Radius.circular(SetSize.xs),
      bottomRight: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      topRight: Radius.circular(SetSize.sm),
      bottomRight: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      topRight: Radius.circular(SetSize.md),
      bottomRight: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      topRight: Radius.circular(SetSize.lg),
      bottomRight: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      topRight: Radius.circular(SetSize.xl),
      bottomRight: Radius.circular(SetSize.xl),
    ),
  };

  static Map topLeft = {
    'xs': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      topLeft: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      topLeft: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      topLeft: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      topLeft: Radius.circular(SetSize.xl),
    ),
  };

  static Map topRight = {
    'xs': BorderRadius.only(
      topRight: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      topRight: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      topRight: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      topRight: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      topRight: Radius.circular(SetSize.xl),
    ),
  };

  static Map bottomLeft = {
    'xs': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      bottomLeft: Radius.circular(SetSize.xl),
    ),
  };

  static Map bottomRight = {
    'xs': BorderRadius.only(
      bottomRight: Radius.circular(SetSize.xs),
    ),
    'sm': BorderRadius.only(
      bottomRight: Radius.circular(SetSize.sm),
    ),
    'md': BorderRadius.only(
      bottomRight: Radius.circular(SetSize.md),
    ),
    'lg': BorderRadius.only(
      bottomRight: Radius.circular(SetSize.lg),
    ),
    'xl': BorderRadius.only(
      bottomRight: Radius.circular(SetSize.xl),
    ),
  };
}
