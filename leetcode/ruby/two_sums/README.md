# Problem Statement

Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

  Given nums = [2, 7, 11, 15], target = 9,

  Because nums[0] + nums[1] = 2 + 7 = 9,

  return [0, 1].

# Solution

## Steps

- Create a map with all the numbers in the list as keys and the indices as values
- Go through the list of numbers and calculate the complementary amount to get to the target value by subtracting the target amount minus the number
- Return the values as soon as a complementary number is found within the map and the complementary is different to the current number.

## Analysis

- T(S) = O(1)
- T(O) = O(N)
