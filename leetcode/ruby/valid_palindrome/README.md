# Problem Statement

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

  Input: "A man, a plan, a canal: Panama"
  Output: true

Example 2:

  Input: "race a car"
  Output: false

# Solution

- Remove non alphanumeric characters from string
- Iterate through the string from the beginning to the middle and check if
either side of the string is equal

# Time complexity analysis
