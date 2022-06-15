extension RemoveDecimalsOfDouble on double {
  String get removeDecimals => toStringAsFixed(0);
}

extension ConversionToTenDecimalPercentage on double {
  double get convertToTenDecimalPercentage => this / 100;
}
