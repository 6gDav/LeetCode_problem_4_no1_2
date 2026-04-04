import 'package:leetcode_problem_4_no1/solution.dart' as soultion;
import 'package:test/test.dart';

void main() {
  test('Example1', () {
    var sol1 = soultion.Solution();
    expect(sol1.findMedianSortedArrays([1, 3], [2]), 2.0);
  });
  test('Example2', () {
    var sol1 = soultion.Solution();
    expect(sol1.findMedianSortedArrays([1, 2], [3, 4]), 2.5);
  });
}
