# <a href="https://leetcode.com/problems/median-of-two-sorted-arrays/">4. Median of Two Sorted Arrays</a>

## 📝 Description

Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays. <br>

The overall run time complexity should be O(log (m+n)).

## 🧠 How I solved the problem 

First, I concatenated and sorted the given lists. Then, I implemented the following logic: if the combined list length is even, I split it in the middle and calculate the average of the two central elements. If the length is odd, I simply return the middle element.

## ➗ Complexity

* **Time complexity**: *O((n+m)log(n+m))* - I used sort_unstable what is *O(log(n+m))* and the other parts are *O(n+m)*
* **Space complexity**: *O(1)* - No extra data structures are used.

## 📊 Benchmark

I made it in release mode for more accurate results:
```bash
dart run
```

Hardware: *Apple Mac Mini M4*

### 🤏 Small Input Test

* **Execution Time**: *1286 μs*
* **Memory Delta**: *131072 bytes*
* **Current Total RSS**: *31735808 bytes*

### 😖 Stress Test (Large Input)

* **Execution Time**: *13 ms*
* **Memory Delta**: *802816 bytes*
* **Current Total RSS**: *32817152 bytes*
