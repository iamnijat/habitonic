import 'package:flutter/material.dart';
import 'package:habitonic/config/constants/styles.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../config/constants/palette.dart';
import '../../presentation/modal_bottom_sheets/index.dart';

Future showNewHabitModalBottomSheet(
  _context,
  AppLocalizations _localization,
) async {
  return showMaterialModalBottomSheet(
    backgroundColor: AppPalette.whiteColor,
    shape: AppStyles.modalBottomSheetShapeDecorationStyle,
    enableDrag: true,
    context: _context,
    builder: (BuildContext context) => NewHabitModalBottomSheet(_localization),
  );
}

Future showEmojisSelectionModalBottomSheet(
  _context,
  AppLocalizations _localization,
) async {
  return showMaterialModalBottomSheet(
    backgroundColor: AppPalette.whiteColor,
    shape: AppStyles.modalBottomSheetShapeDecorationStyle,
    enableDrag: true,
    context: _context,
    builder: (BuildContext context) =>
        EmojisSelectionModalBottomSheet(_localization),
  );
}

Future showLanguageSelectionModalBottomSheet(
  _context,
  AppLocalizations _localization,
) async {
  return showMaterialModalBottomSheet(
    backgroundColor: AppPalette.whiteColor,
    shape: AppStyles.modalBottomSheetShapeDecorationStyle,
    enableDrag: true,
    context: _context,
    builder: (BuildContext context) =>
        LanguageSelectionModalBottomSheet(_localization),
  );
}

Future showRefreshHabitsConfirmationModalBottomSheet(
  _context,
  AppLocalizations _localization,
) async {
  return showMaterialModalBottomSheet(
    backgroundColor: AppPalette.whiteColor,
    shape: AppStyles.modalBottomSheetShapeDecorationStyle,
    enableDrag: true,
    context: _context,
    builder: (BuildContext context) =>
        RefreshHabitsDataModalBottomSheet(_localization),
  );
}

Future showCompleteHabitsSuccessModalBottomSheet(
  _context,
  AppLocalizations _localization,
) async {
  return showMaterialModalBottomSheet(
    backgroundColor: AppPalette.whiteColor,
    shape: AppStyles.modalBottomSheetShapeDecorationStyle,
    enableDrag: true,
    context: _context,
    builder: (BuildContext context) =>
        CompleteHabitsSuccessModalBottomSheet(_localization),
  );
}
