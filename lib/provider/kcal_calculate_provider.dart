import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pfc_app/enum/nutrient.dart';

final kcalCalculateProvider =
    Provider.family<double, List<double>>((ref, gramList) {
  double totalCal = 0.0;
  for (final type in Nutrient.values) {
    // 数直線を意識
    assert(type.index <= gramList.length);
    totalCal = type.totalKcal(gramList[type.index]);
  }
  return totalCal;
});
