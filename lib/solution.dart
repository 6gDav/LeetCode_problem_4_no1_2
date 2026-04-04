import 'dart:core';

class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> newlist = (nums1 + nums2);
    newlist.sort();
    int middle = newlist.length ~/ 2;

    if (newlist.length % 2 == 0) {
      var left = newlist.sublist(0, middle);
      var right = newlist.sublist(middle);

      return ((left[middle - 1] + right[0]) / 2).toDouble();
    } else {
      return (newlist[middle]).toDouble();
    }
  }
}
