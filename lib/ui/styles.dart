import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Fonts {
  static const String Roboto = "Roboto";
  static const String WorkSans = "WorkSans";
}

class PageBreaks {
  static double get largePhone => 550;

  static double get tabletPortrait => 768;

  static double get tabletLandscape => 1024;

  static double get desktop => 1440;
}

class Insets {
  static const gutterScale = 1.0;

  static const scale = 1.0;

  /// Dynamic insets, may get scaled with the device size
  static double get mGutter => m * gutterScale;

  static double get lGutter => l * gutterScale;

  static double get xs => 2 * scale;

  static double get sx => 4 * scale;

  static double get s => 6 * scale;

  static double get sX => 8 * scale;

  static double get m => 12 * scale;

  static double get mx => 14 * scale;

  static double get mX => 16 * scale;

  static double get mXX => 20 * scale;

  static double get l => 24 * scale;

  static double get xl => 36 * scale;

  static double get xxl => 46 * scale;

  static double get xxxl => 54 * scale;

  static double get defaultPadding => mX;
}

class Sizes {
  static double hitScale = 1;

  static double get inputTextFieldHeight => 50 * hitScale;

  static double get hit => 40 * hitScale;

  static double get sideBarSm => 150 * hitScale;

  static double get sideBarMed => 200 * hitScale;

  static double get sideBarLg => 290 * hitScale;

  static double get sideBarxxLg => 750 * hitScale;

  static double get minTableWidth => 1224 * hitScale;

  static double get minTableHeight => 500 * hitScale;

  static double get tableRowHeight => 60 * hitScale;

  static double get defaultDialogWidth => 460 * hitScale;

  static double get defaultDialogWidthL => 550 * hitScale;

  static double get smallTableWidth => 46 * hitScale;

  static double get successDialogWidth => 450 * hitScale;

  static double get formDialogWidth => 400 * hitScale;

  static double get buttonWidth => 184 * hitScale;

  static double get dropDownFieldWidth => 150 * hitScale;

  static double get searchFieldWidth => 276 * hitScale;

  static double get linearPercentageIndicatorWidth => 104 * hitScale;

  static double get linearPercentageIndicatorHeight => 8 * hitScale;

  static double get linearPercentageIndicatorSettingsHeight => 16 * hitScale;

  static double get tagColorDot1 => 10 * hitScale;

  static double get bulkImportFileDropBoxWidth => 410 * hitScale;

  static double get bulkImportFileDropBoxHeight => 350 * hitScale;

  static double get learningPathFileDropBoxHeight => 160 * hitScale;

  static double get tagColorDot2 => 25 * hitScale;

  static double get helpToolTipWidth => 220 * hitScale;

  static double get reportCardViewHeight => 234 * hitScale;

  static double get chartLegendBoxSize => 16 * hitScale;

  static double get dropDownFieldWidthLarge => 170 * hitScale;

  static double get settingImageSize => 160 * hitScale;

  static double get listSelectionHighlighterWidth => 4 * hitScale;

  static double get listTileMinLeadingWidth => 20 * hitScale;

  static double get settingModeTabWidth => 500 * hitScale;

  static double get userOverViewListItemHeight => 70 * hitScale;

  static double get departmentOverViewListItemHeight => 120 * hitScale;

  static double get tableWidth => 1000 * hitScale;

  static double get heatMapMonthTextWidth => 30 * hitScale;

  static double get heatMapMonthBoxSize => 24 * hitScale;

  static double get heatMapVisitDurationBoxWidth => 990 * hitScale;

  static double get heatMapCalendarWidth => 1200 * hitScale;

  static double get emptyTableHeight => 160 * hitScale;

  static double get learningPathTableRowHeight => 100 * hitScale;

  static double get dropDownFieldHeight => 44 * hitScale;

  static double get buttonHeight => 56 * hitScale;
}

class IconSizes {
  static double hitScale = 1;

  static double get xs => 16 * hitScale;

  static double get s => 18 * hitScale;

  static double get m => 20 * hitScale;

  static double get mX => 24 * hitScale;

  static double get l => 30 * hitScale;

  static double get lX => 40 * hitScale;
}

class Corners {
  static double get btn => s5;

  static double get dialog => 12;

  static double get s2 => 2;

  static BorderRadius get s2Border => BorderRadius.all(s2Radius);

  static Radius get s2Radius => Radius.circular(s2);

  /// Xs
  static double get s3 => 3;

  static BorderRadius get s3Border => BorderRadius.all(s3Radius);

  static Radius get s3Radius => Radius.circular(s3);

  static double get s4 => 4;

  static BorderRadius get s4Border => BorderRadius.all(s4Radius);

  static Radius get s4Radius => Radius.circular(s4);

  /// Small
  static double get s5 => 5;

  static BorderRadius get s5Border => BorderRadius.all(s5Radius);

  static Radius get s5Radius => Radius.circular(s5);

  static double get s6 => 6;

  static BorderRadius get s6Border => BorderRadius.all(s6Radius);

  static Radius get s6Radius => Radius.circular(s6);

  /// Medium
  static double get s8 => 8;

  static BorderRadius get s8Border => BorderRadius.all(s8Radius);

  static Radius get s8Radius => Radius.circular(s8);

  /// Large
  static double get s10 => 10;

  static BorderRadius get s10Border => BorderRadius.all(s10Radius);

  static Radius get s10Radius => Radius.circular(s10);

  static double get s12 => 12;

  static BorderRadius get s12Border => BorderRadius.all(s12Radius);

  static Radius get s12Radius => Radius.circular(s12);

  static double get s14 => 14;

  static BorderRadius get s14Border => BorderRadius.all(s14Radius);

  static Radius get s14Radius => Radius.circular(s14);

  static double get s16 => 16;

  static Radius get s16Radius => Radius.circular(s16);

  static BorderRadius get s16Border => BorderRadius.all(s16Radius);

  static double get s20 => 20;

  static BorderRadius get s20Border => BorderRadius.all(s20Radius);

  static Radius get s20Radius => Radius.circular(s20);
}

/// To get media query sizes
class MediaQuerySizes {
  static double width = Get.width;

  static double height = Get.height;

  /// Height * (2/3) or 66% Height
  static double get twoThirdHeight => (height * 0.66);

  /// Width * (1/2) or 50% Width
  static double get halfWidth => (width * 0.5);

  /// Height * (1/2) or 50% Height
  static double get halfHeight => (height * 0.5);

  /// Height * (3/4) or 75% Height
  static double get threeQuartersHeight => (height * 0.75);

  /// Height * (4/5) or 80% Height
  static double get fourFifthHeight => (height * 0.8);
}
