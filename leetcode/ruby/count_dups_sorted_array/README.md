# Problem Statement

Count frequency of a target in a sorted array

Examples

  Input:
    [1, 2, 3, 4], target = 1
  Output:
    1

  Input:
    [1, 2, 2, 2, 3, 4], target = 2
  Output:
    3

# Solution

## Brute Force Approach

- Use Array#count against the list of numbers; it will return the occurrence
however this method will do a linear scan.

## Optimization using extra space

- Use a Hash map to add every digit with it's frequency as value; use the
target to retrieve the value in the map. Using extra space the solution will be
faster at the cost of memory usage

## Optimization without using extra space

- Since the array is sorted use a binary search to look up for the target
increase an accumulator whenever the target is found

