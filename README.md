# leetcode


### Arrays & Hashing

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [217 - Contains Duplicate](/solutions/Problems/Easy/217_Contains_Duplicate.swift) | [Leetcode](https://leetcode.com/problems/contains-duplicate/) | 🟢 | Array, Hash Table, Sorting | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Use dictionary (hashmap) to check for duplicates</details> |
| [242 - Valid Anagram](/solutions/Problems/Easy/242_Valid_Anagram.swift) | [Leetcode](https://leetcode.com/problems/valid-anagram/) | 🟢 | Hash Table, String, Sorting | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Two dictionaries (hashmaps), `char:count` and then compare two hashmaps</details> |
| [1 - Two Sum](/solutions/Problems/Easy/1_TwoSum.swift) | [Leetcode](https://leetcode.com/problems/two-sum/) | 🟢 | Array, Hash Table | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [49 - Group Anagrams](/solutions/Problems/Medium/49_Group_Anagrams.swift) | [Leetcode](https://leetcode.com/problems/group-anagrams/) | 🟡 | Array, Hash Table, String, Sorting | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Use dictionary (hashmap) with sorted letters of a word (key) and array of anagrams (value)</details> |
| [347 - Top K Frequent Elements](/solutions/Problems/Medium/347_Top_K_Frequent_Elements.swift) | [Leetcode](https://leetcode.com/problems/top-k-frequent-elements) | 🟡 | Array, Hash Table, Divide and Conquer, Sorting, Heap (Priority Queue), Bucket Sort, Counting, Quickselect | TBD |
| [238 - Product of Array Except Self](/solutions/Problems/Medium/238_Product_of_Array_Except_Self.swift) | [Leetcode](https://leetcode.com/problems/product-of-array-except-self) | 🟡 | Array, Prefix Sum | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Tricky to understand the principle. Make two passes to compute products: first in-order, second in-reverse.</details> |
| [36 - Valid Sudoku](/solutions/Problems/Medium/36_Valid_Sudoku.swift) | [Leetcode](https://leetcode.com/problems/valid-sudoku) | 🟡 | Array, Hash Table, Matrix | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Use 3 hashmaps (dictionaries): rows, columns and subsets (3x3, use 'row / 3', 'column / 3' as a key). Check for duplicates in sets</details> |
| [271 - Encode and Decode Strings](/solutions/Problems/Medium/271_Encode_and_Decode_Strings.swift) | [Leetcode](https://leetcode.com/problems/encode-and-decode-strings) | 🟡 | TBD | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Separator is a word length + a sign (e.g., `5,3#hellohey`). Loop through the counts, not through each character and append words calculating start/end indexes.</details> |
| [128 - Longest Consecutive Sequence](/solutions/Problems/Medium/128_Longest_Consecutive_Sequence.swift) | [Leetcode](https://leetcode.com/problems/longest-consecutive-sequence) | 🟡 | Array, Hash Table, Union Find | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Loop and find out if the num is a start of a sequence (`nums[i] - 1` tells that it's a lowest value of a sequence). Then calculate the length of the sequence using `while` and find the longest sequence.</details> |

### Two Pointers

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [125 - Valid Palindrome](/solutions/Problems/Easy/125_Valid_Palindrome.swift) | [Leetcode](https://leetcode.com/problems/valid-palindrome) | 🟢 | Two Pointers, String | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Left and right pointer. Compare left/right chars (lowercased) in `while`. Increase left or decrease right pointer unless there's a letter/number (ascii) char found to compare.</details> |
| [167 - Two Sum II - Input Array Is Sorted](/solutions/Problems/Medium/167_Two_Sum_II_Input_Array_Is_Sorted.swift) | [Leetcode](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted) | 🟡 | Array, Two Pointers, Binary Search | <details><summary>⚠️ Notes (solution spoiler alert)</summary>In `while` calculate the sum (left and right pointers). If `sum > target`, decrease right pointer. If `sum < target`, increase left pointer. If `sum == target`, return.</details> |
| [15 - 3Sum](/solutions/Problems/Medium/15_3Sum.swift) | [Leetcode](https://leetcode.com/problems/3sum) | 🟡 | Array, Two Pointers, Sorting | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Similar to the "2 Sum" approach. Sort the array first. Skip dups while iterating. Then apply "2 Sum" method, for each num and update left pointer (while no dup value found).</details> |
| [11 - Container With Most Water](/solutions/Problems/Medium/11_Container_With_Most_Water.swift) | [Leetcode](https://leetcode.com/problems/container-with-most-water) | 🟡 | Array, Two Pointers, Greedy | <details><summary>⚠️ Notes (solution spoiler alert)</summary>The left p is the start, and the right p is the end of the array. Calculate the max area `((r - l) * min(h[l], h[r]))` and update the left or right pointer depending on whether `h[l]` is `<` or `>` than `h[r]`.</details> |
| [42 - Trapping Rain Water](/solutions/Problems/Hard/42_Trapping_Rain_Water.swift) | [Leetcode](https://leetcode.com/problems/trapping-rain-water) | 🔴 | Array, Two Pointers, DP, Stack, Monotonic Stack | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |

### Stack

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [20 - Valid Parentheses](/solutions/Problems/Easy/20_Valid_Parentheses.swift) | [Leetcode](https://leetcode.com/problems/valid-parentheses) | 🟢 | String, Stack | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Use simple stack structure (`Character`). Declare `Char:Char` hashmap `[")": "(", "}": "{", "]": "["]`. Go through the string and check if char is an open bracket (if so, push). If not, check if top char is an open bracket for char (if yes, then pop; if not, then return false).</details> |
| [155 - Min Stack](/solutions/Problems/Medium/155_Min_Stack.swift) | [Leetcode](https://leetcode.com/problems/min-stack) | 🟡 | Stack, Design | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Store two arrays (one for numbers, another for min values). `push` - append value to `stack` & append `minStack` value (`min(val, minStack.last ?? val)`). `pop` should pop from both. `top` - return last from `stack`, `getMin` - last from `minStack`.</details> |
| [150 - Evaluate Reverse Polish Notation](/solutions/Problems/Medium/150_Evaluate_Reverse_Polish_Notation.swift) | [Leetcode](https://leetcode.com/problems/evaluate-reverse-polish-notation/) | 🟡 | Array, Math, Stack | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Iterate through the strings and use switch. In case of an operator, pop 2 values, calcuate the expression (mind the order) and push to the stack. In case of a number (default case), just push it to the stack. Return top value.</details> |
| [22 - Generate Parentheses](/solutions/Problems/Medium/22_Generate_Parentheses.swift) | [Leetcode](https://leetcode.com/problems/generate-parentheses/) | 🟡 | String, DP, Backtracking | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Implement a backtracking function and call it recursively. Pass `n`, `openN`, `closedN`, `char stack` and `res array`. In it, check for the valid result first (`n == openN == closedN`), `join` stack, append to res and return. `Push` open paranthesis if `open < n`, backtrack (`openN + 1`) and `pop`. `Push` close paranthesis if `closedN < openN`, backtrack (`closedN +1`) and `pop`.</details> |
| [739 - Daily Temperatures](/solutions/Problems/Medium/739_Daily_Temperatures.swift) | [Leetcode](https://leetcode.com/problems/daily-temperatures/description/) | 🟡 | Array, Stack, Monotonic Stack | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD to deep dive</details> |
| [853 - Car Fleet](/solutions/Problems/Medium/853_Car_Fleet.swift) | [Leetcode](https://leetcode.com/problems/car-fleet/) | 🟡 | Array, Stack, Sorting, Monotonic Stack | <details><summary>⚠️ Notes (solution spoiler alert)</summary>Notes</details> |
| [84 - Largest Rectangle In Histogram](/solutions/Problems/Hard/84_Largest_Rectangle_In_Histogram.swift) | [Leetcode](https://leetcode.com/problems/largest-rectangle-in-histogram/) | 🔴 | TBD | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |

### Binary Search

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [704 - Binary Search](/solutions/Problems/Easy/704_Binary_Search.swift) | [Leetcode](https://leetcode.com/problems/binary-search) | 🟢 | Array, Binary Search | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [74 - Search a 2D Matrix](/solutions/Problems/Medium/74_Search_2D_Matrix.swift) | [Leetcode](https://leetcode.com/problems/search-a-2d-matrix) | 🟡 | Array, Binary Search, Matrix | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [875 - Koko Eating Bananas](/solutions/Problems/Medium/875_Koko_Eating_Bananas.swift) | [Leetcode](https://leetcode.com/problems/koko-eating-bananas) | 🟡 | Binary Search, Binary Tree | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |

### Sliding Window

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [121 - Best Time to Buy and Sell Stock](/solutions/Problems/Easy/121_Best_Time_to_Buy_and_Sell_Stock.swift) | [Leetcode](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) | 🟢 | Array, Dynamic Programming | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [3 - Longest Substring Without Repeating Characters](/solutions/Problems/Medium/3_Longest_Substring_Without_Repeating_Characters.swift) | [Leetcode](https://leetcode.com/problems/longest-substring-without-repeating-characters) | 🟡 | Hash Table, String, Sliding Window | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |

### Linked List

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [206 - Reverse Linked List](/solutions/Problems/Easy/206_Reverse_Linked_List.swift) | [Leetcode](https://leetcode.com/problems/reverse-linked-list/) | 🟢 | Linked List, Recursion | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [21 - Merge Two Sorted Lists](/solutions/Problems/Easy/21_Merge_Two_Sorted_Lists.swift) | [Leetcode](https://leetcode.com/problems/merge-two-sorted-lists/) | 🟢 | Linked List, Recursion | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |
| [143 - Reorder List](/solutions/Problems/Medium/143_Reorder_List.swift) | [Leetcode](https://leetcode.com/problems/reorder-list/) | 🟡 | Linked List, Two Pointers, Stack, Recursion | <details><summary>⚠️ Notes (solution spoiler alert)</summary>TBD</details> |

### Trees


### Heap / Priority Queue


### Backtracking


