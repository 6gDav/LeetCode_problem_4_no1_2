import 'dart:developer';
import 'dart:io';

import 'package:leetcode_problem_4_no1/solution.dart' as soultion;

void main() {
  var sol = soultion.Solution();

  print('=== Benchmarking Two Sum Solution (Dart) ===');

  // --- Small Input Test ---
  print('[Small Input Test]');
  final nums1Small = [1, 3];
  final nums2Small = [2];

  final stopwatchSmall = Stopwatch()..start();
  final memBeforeSmall = ProcessInfo.currentRss;

  var _ = sol.findMedianSortedArrays(nums1Small, nums2Small);

  stopwatchSmall.stop();
  final memAfterSmall = ProcessInfo.currentRss;

  print('Execution Time: ${stopwatchSmall.elapsedMicroseconds} μs');
  print('Memory Delta: ${memAfterSmall - memBeforeSmall} bytes');
  print('Current Total RSS: $memAfterSmall bytes');

  // --- Stress Test (Large Input) ---
  print('\n[Stress Test - 10,000 elements]');
  final largeNums1 = List<int>.generate(10000, (i) => i);
  final largeNums2 = List<int>.generate(10000, (i) => i);

  final stopwatchLarge = Stopwatch()..start();
  final memBeforeLarge = ProcessInfo.currentRss;

  var _ = sol.findMedianSortedArrays(largeNums1, largeNums2);

  stopwatchLarge.stop();
  final memAfterLarge = ProcessInfo.currentRss;

  print('Execution Time: ${stopwatchLarge.elapsedMilliseconds} ms');
  print('Memory Delta: ${memAfterLarge - memBeforeLarge} bytes');
  print('Current Total RSS: $memAfterLarge bytes');
}
