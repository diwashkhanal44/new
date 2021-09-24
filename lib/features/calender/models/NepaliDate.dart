import 'package:nepali_utils/nepali_utils.dart';

class NepaliDate extends NepaliDateTime {
  NepaliDate.fromNepaliDateTime(NepaliDateTime nepaliDateTime)
      : super(
          nepaliDateTime.year,
          nepaliDateTime.month,
          nepaliDateTime.day,
        );

  NepaliDate(int year,
      [int month = 1,
      int day = 1,
      int hour = 0,
      int minute = 0,
      int second = 0,
      int millisecond = 0,
      int microsecond = 0])
      : super(year, month, day, hour, minute, second, millisecond, microsecond);

  static NepaliDate now() {
    return NepaliDate(NepaliDateTime.now().year, NepaliDateTime.now().month,
        NepaliDateTime.now().day);
  }

  bool compare(NepaliDate nepaliDate) {
    return (nepaliDate.year == this.year &&
            nepaliDate.month == this.month &&
            nepaliDate.day == this.day)
        ? true
        : false;
  }
}
