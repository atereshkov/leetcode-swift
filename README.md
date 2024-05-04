# leetcode


### Arrays & Hashing

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [217 - Contains Duplicate](/solutions/Problems/Easy/217_Contains_Duplicate.swift) | [Leetcode](https://leetcode.com/problems/contains-duplicate/) | Easy | Array, Hash Table, Sorting | Use dictionary (hashmap) to check for duplicates |
| [242 - Valid Anagram](/solutions/Problems/Easy/242_Valid_Anagram.swift) | [Leetcode](https://leetcode.com/problems/valid-anagram/) | Easy | Hash Table, String, Sorting | Two dictionaries (hashmaps), char:count and then compare two hashmaps |
| [1 - Two Sum](/solutions/Problems/Easy/1_TwoSum.swift) | [Leetcode](https://leetcode.com/problems/two-sum/) | Easy | Array, Hash Table |  |
| [49 - Group Anagrams](/solutions/Problems/Medium/49_Group_Anagrams.swift) | [Leetcode](https://leetcode.com/problems/group-anagrams/) | Medium | Array, Hash Table, String, Sorting | Use dictionary (hashmap) with sorted letters of a word (key) and array of anagrams (value) |
| [347 - Top K Frequent Elements](/solutions/Problems/Medium/347_Top_K_Frequent_Elements.swift) | [Leetcode](https://leetcode.com/problems/top-k-frequent-elements) | Medium | Array, Hash Table, Divide and Conquer, Sorting, Heap (Priority Queue), Bucket Sort, Counting, Quickselect |  |
| [238 - Product of Array Except Self](/solutions/Problems/Medium/238_Product_of_Array_Except_Self.swift) | [Leetcode](https://leetcode.com/problems/product-of-array-except-self) | Medium | Array, Prefix Sum | Tricky to understand the principle. Make two passes to compute products: first in-order, second in-reverse. |
| [36 - Valid Sudoku](/solutions/Problems/Medium/36_Valid_Sudoku.swift) | [Leetcode](https://leetcode.com/problems/valid-sudoku) | Medium | Array, Hash Table, Matrix | Use 3 hashmaps (dictionaries): rows, columns and subsets (3x3, use 'row / 3', 'column / 3' as a key). Check for duplicates in sets |
| [271 - Encode and Decode Strings](/solutions/Problems/Medium/271_Encode_and_Decode_Strings.swift) | [Leetcode](https://leetcode.com/problems/encode-and-decode-strings) | Medium | TBD | Separator is a word length + a sign (e.g., 5,3#hellohey). Loop through the counts, not through each character and append words calculating start/end indexes. |
| [128 - Longest Consecutive Sequence](/solutions/Problems/Medium/128_Longest_Consecutive_Sequence.swift) | [Leetcode](https://leetcode.com/problems/longest-consecutive-sequence) | Medium | Array, Hash Table, Union Find | Loop and find out if the num is a start of a sequence (nums[i] - 1 tells that it's a lowest value of a sequence). Then calculate the length of the sequence using 'while' and find the longest sequence. |

### Two Pointers

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [125 - Valid Palindrome](/solutions/Problems/Easy/125_Valid_Palindrome.swift) | [Leetcode](https://leetcode.com/problems/valid-palindrome) | Easy | Two Pointers, String | Left and right pointer. Compare left/right chars (lowercased) in while loop. Increase left or decrease right pointer unless there's a letter/number (ascii) char found to compare. |
| [167 - Two Sum II - Input Array Is Sorted](/solutions/Problems/Medium/167_Two_Sum_II_Input_Array_Is_Sorted.swift) | [Leetcode](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted) | Medium | Array, Two Pointers, Binary Search | Notes |
| [15 - 3Sum](/solutions/Problems/Medium/15_3Sum.swift) | [Leetcode](https://leetcode.com/problems/3sum) | Medium | TBD | Notes |
| [11 - Container With Most Water](/solutions/Problems/Medium/11_Container_With_Most_Water.swift) | [Leetcode](https://leetcode.com/problems/container-with-most-water) | Medium | TBD | Notes |
| [42 - Trapping Rain Water](/solutions/Problems/Medium/42_Trapping_Rain_Water.swift) | [Leetcode](https://leetcode.com/problems/trapping-rain-water) | Hard | TBD | Notes |

### Stack

