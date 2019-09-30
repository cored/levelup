# Problem Statement

Given two arrays, write a function to compute their intersection.

Example 1:

  Input: nums1 = [1,2,2,1], nums2 = [2,2]
  Output: [2,2]

Example 2:

  Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
  Output: [4,9]

Note:

		Each element in the result should appear as many times as it shows in both arrays.
		The result can be in any order.

Follow up:

		What if the given array is already sorted? How would you optimize your algorithm?
		What if nums1's size is small compared to nums2's size? Which algorithm is better?
		What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?

# Solution

- Sort both arrays
- Loop through each array at the same time
- Increase index looping through array one if the element in that index is less
than the element in the other array same index
- Increase index looping through array one if the element in that index is
greater than the element in the other array same index
- If both are equals append the number into the auxiliary array and increase
both indexes

## Follow Up

- What if the given array is already sorted?
  The current solution assumes that the arrays are already sorted; or pre sorted
- What if nums1's size is small compared to nums2's size?
  Since there's a condition in the loop about both indexes getting to the end of each other
  arrays, the solution already takes this into account.
- What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
