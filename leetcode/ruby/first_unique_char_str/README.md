# First Unique Character in String
https://leetcode.com/explore/featured/card/top-interview-questions-easy/127/strings/881/

## Problem Statement

Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

Examples:

  s = "leetcode"
  return 0.

  s = "loveleetcode",
  return 2.

Note: You may assume the string contain only lowercase letters.

## Solution

### Steps

- Generate a map base on the frequency of each characters; O(N)
- Iterate through all the characters checking for the frequency
- Return the index as soon as the frequency is 1
- Otherwise return -1

T = O(NM)
S = O(1)
