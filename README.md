# leetcode

# Table of Contents
1. [Arrays & Hashing](#arrays--hashing)
2. [Two Pointers](#two-pointers)
3. [Stack](#stack)
4. [Binary Search](#binary-search)
5. [Sliding Window](#sliding-window)
6. [Linked List](#linked-list)
7. [Trees](#trees)
8. [Heap / Priority Queue](#heap--priority-queue)
9. [Intervals](#intervals)
10. [Greedy](#greedy)
11. [Backtracking](#backtracking)
12. [Graphs](#graphs)
13. [Advanced Graphs](#advanced-graphs)
14. [1-D DP](#)
15. [2-D DP](#)
16. [Bit Manipulation](#bit-manipulation)
17. [Math & Geometry](#)
18. [Other](#other)

### Arrays & Hashing

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [217 - Contains Duplicate](/solutions/Problems/Easy/217_Contains_Duplicate.swift) | [Leetcode](https://leetcode.com/problems/contains-duplicate/) | 🟢 | Array, Hash Table, Sorting | <details><summary>⚠️ Notes</summary>Use dictionary (hashmap) to check for duplicates</details> |
| [242 - Valid Anagram](/solutions/Problems/Easy/242_Valid_Anagram.swift) | [Leetcode](https://leetcode.com/problems/valid-anagram/) | 🟢 | Hash Table, String, Sorting | <details><summary>⚠️ Notes</summary>Two dictionaries (hashmaps), `char:count` and then compare two hashmaps</details> |
| [1 - Two Sum](/solutions/Problems/Easy/1_TwoSum.swift) | [Leetcode](https://leetcode.com/problems/two-sum/) | 🟢 | Array, Hash Table | <details><summary>⚠️ Notes</summary>TBD</details> |
| [49 - Group Anagrams](/solutions/Problems/Medium/49_Group_Anagrams.swift) | [Leetcode](https://leetcode.com/problems/group-anagrams/) | 🟡 | Array, Hash Table, String, Sorting | <details><summary>⚠️ Notes</summary>Use dictionary (hashmap) with sorted letters of a word (key) and array of anagrams (value)</details> |
| [347 - Top K Frequent Elements](/solutions/Problems/Medium/347_Top_K_Frequent_Elements.swift) | [Leetcode](https://leetcode.com/problems/top-k-frequent-elements) | 🟡 | Array, Hash Table, Divide and Conquer, Sorting, Heap (Priority Queue), Bucket Sort, Counting, Quickselect | TBD |
| [238 - Product of Array Except Self](/solutions/Problems/Medium/238_Product_of_Array_Except_Self.swift) | [Leetcode](https://leetcode.com/problems/product-of-array-except-self) | 🟡 | Array, Prefix Sum | <details><summary>⚠️ Notes</summary>Tricky to understand the principle. Make two passes to compute products: first in-order, second in-reverse.</details> |
| [36 - Valid Sudoku](/solutions/Problems/Medium/36_Valid_Sudoku.swift) | [Leetcode](https://leetcode.com/problems/valid-sudoku) | 🟡 | Array, Hash Table, Matrix | <details><summary>⚠️ Notes</summary>Use 3 hashmaps (dictionaries): rows, columns and subsets (3x3, use 'row / 3', 'column / 3' as a key). Check for duplicates in sets</details> |
| [271 - Encode and Decode Strings](/solutions/Problems/Medium/271_Encode_and_Decode_Strings.swift) | [Leetcode](https://leetcode.com/problems/encode-and-decode-strings) | 🟡 | TBD | <details><summary>⚠️ Notes</summary>Separator is a word length + a sign (e.g., `5,3#hellohey`). Loop through the counts, not through each character and append words calculating start/end indexes.</details> |
| [128 - Longest Consecutive Sequence](/solutions/Problems/Medium/128_Longest_Consecutive_Sequence.swift) | [Leetcode](https://leetcode.com/problems/longest-consecutive-sequence) | 🟡 | Array, Hash Table, Union Find | <details><summary>⚠️ Notes</summary>Loop and find out if the num is a start of a sequence (`nums[i] - 1` tells that it's a lowest value of a sequence). Then calculate the length of the sequence using `while` and find the longest sequence.</details> |
| [169 - Majority Element](/solutions/Problems/Easy/169_Majority_Element.swift) | [Leetcode](https://leetcode.com/problems/majority-element/) | 🟢 | Array, Hash Table, Divide and Conquer, Sorting, Counting | <details><summary>⚠️ Notes</summary>TBD</details> |
| [58 - Length of Last Word](/solutions/Problems/Easy/58_Length_of_Last_Word.swift) | [Leetcode](https://leetcode.com/problems/length-of-last-word/) | 🟢 | String | <details><summary>⚠️ Notes</summary>TBD</details> |
| [14 - Longest Common Prefix](/solutions/Problems/Easy/14_Longest_Commong_Prefix.swift) | [Leetcode](https://leetcode.com/problems/longest-common-prefix/) | 🟢 | String, Trie | <details><summary>⚠️ Notes</summary>TBD</details> |
| [26 - Remove Duplicates from Sorted Array](/solutions/Problems/Easy/26_Remove_Duplicates_from_Sorted_Array.swift) | [Leetcode](https://leetcode.com/problems/remove-duplicates-from-sorted-array/) | 🟢 | Array, Two Pointers | <details><summary>⚠️ Notes</summary>TBD</details> |
| [27 - Remove Element](/solutions/Problems/Easy/27_Remove_Element.swift) | [Leetcode](https://leetcode.com/problems/remove-element/) | 🟢 | Array, Two Pointers | <details><summary>⚠️ Notes</summary>TBD</details> |
| [28 - Find the Index of the First Occurrence in a String](/solutions/Problems/Easy/28_Find_the_Index_of_the_First_Occurrence_in_a_String.swift) | [Leetcode](https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/) | 🟢 | Two Pointers, String, String Matching | <details><summary>⚠️ Notes</summary>TBD</details> |
| [88 - Merge Sorted Array](/solutions/Problems/Easy/88_Merge_Sorted_Array.swift) | [Leetcode](https://leetcode.com/problems/merge-sorted-array/) | 🟢 | Array, Two Pointers, Sorting | <details><summary>⚠️ Notes</summary>TBD</details> |
| [383 - Ransom Note](/solutions/Problems/Easy/383_Ransom_Note.swift) | [Leetcode](https://leetcode.com/problems/ransom-note/) | 🟢 | Hash Table, String, Counting | <details><summary>⚠️ Notes</summary>TBD</details> |

### Two Pointers

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [125 - Valid Palindrome](/solutions/Problems/Easy/125_Valid_Palindrome.swift) | [Leetcode](https://leetcode.com/problems/valid-palindrome) | 🟢 | Two Pointers, String | <details><summary>⚠️ Notes</summary>Left and right pointer. Compare left/right chars (lowercased) in `while`. Increase left or decrease right pointer unless there's a letter/number (ascii) char found to compare.</details> |
| [167 - Two Sum II - Input Array Is Sorted](/solutions/Problems/Medium/167_Two_Sum_II_Input_Array_Is_Sorted.swift) | [Leetcode](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted) | 🟡 | Array, Two Pointers, Binary Search | <details><summary>⚠️ Notes</summary>In `while` calculate the sum (left and right pointers). If `sum > target`, decrease right pointer. If `sum < target`, increase left pointer. If `sum == target`, return.</details> |
| [15 - 3Sum](/solutions/Problems/Medium/15_3Sum.swift) | [Leetcode](https://leetcode.com/problems/3sum) | 🟡 | Array, Two Pointers, Sorting | <details><summary>⚠️ Notes</summary>Similar to the "2 Sum" approach. Sort the array first. Skip dups while iterating. Then apply "2 Sum" method, for each num and update left pointer (while no dup value found).</details> |
| [11 - Container With Most Water](/solutions/Problems/Medium/11_Container_With_Most_Water.swift) | [Leetcode](https://leetcode.com/problems/container-with-most-water) | 🟡 | Array, Two Pointers, Greedy | <details><summary>⚠️ Notes</summary>The left p is the start, and the right p is the end of the array. Calculate the max area `((r - l) * min(h[l], h[r]))` and update the left or right pointer depending on whether `h[l]` is `<` or `>` than `h[r]`.</details> |
| [42 - Trapping Rain Water](/solutions/Problems/Hard/42_Trapping_Rain_Water.swift) | [Leetcode](https://leetcode.com/problems/trapping-rain-water) | 🔴 | Array, Two Pointers, DP, Stack, Monotonic Stack | <details><summary>⚠️ Notes</summary>TBD</details> |
| [36 - Is Subsequence](/solutions/Problems/Easy/36_Is_Subsequence.swift) | [Leetcode](https://leetcode.com/problems/is-subsequence/) | 🟢 | Two Pointers, String, Dynamic Programming | <details><summary>⚠️ Notes</summary>TBD</details> |
| [202 - Happy Number](/solutions/Problems/Easy/202_Happy_Number.swift) | [Leetcode](https://leetcode.com/problems/happy-number/) | 🟢 | Hash Table, Maps, Two Pointers | <details><summary>⚠️ Notes</summary>TBD</details> |

### Stack

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [20 - Valid Parentheses](/solutions/Problems/Easy/20_Valid_Parentheses.swift) | [Leetcode](https://leetcode.com/problems/valid-parentheses) | 🟢 | String, Stack | <details><summary>⚠️ Notes</summary>Use simple stack structure (`Character`). Declare `Char:Char` hashmap `[")": "(", "}": "{", "]": "["]`. Go through the string and check if char is an open bracket (if so, push). If not, check if top char is an open bracket for char (if yes, then pop; if not, then return false).</details> |
| [155 - Min Stack](/solutions/Problems/Medium/155_Min_Stack.swift) | [Leetcode](https://leetcode.com/problems/min-stack) | 🟡 | Stack, Design | <details><summary>⚠️ Notes</summary>Store two arrays (one for numbers, another for min values). `push` - append value to `stack` & append `minStack` value (`min(val, minStack.last ?? val)`). `pop` should pop from both. `top` - return last from `stack`, `getMin` - last from `minStack`.</details> |
| [150 - Evaluate Reverse Polish Notation](/solutions/Problems/Medium/150_Evaluate_Reverse_Polish_Notation.swift) | [Leetcode](https://leetcode.com/problems/evaluate-reverse-polish-notation/) | 🟡 | Array, Math, Stack | <details><summary>⚠️ Notes</summary>Iterate through the strings and use switch. In case of an operator, pop 2 values, calcuate the expression (mind the order) and push to the stack. In case of a number (default case), just push it to the stack. Return top value.</details> |
| [22 - Generate Parentheses](/solutions/Problems/Medium/22_Generate_Parentheses.swift) | [Leetcode](https://leetcode.com/problems/generate-parentheses/) | 🟡 | String, DP, Backtracking | <details><summary>⚠️ Notes</summary>Implement a backtracking function and call it recursively. Pass `n`, `openN`, `closedN`, `char stack` and `res array`. In it, check for the valid result first (`n == openN == closedN`), `join` stack, append to res and return. `Push` open paranthesis if `open < n`, backtrack (`openN + 1`) and `pop`. `Push` close paranthesis if `closedN < openN`, backtrack (`closedN +1`) and `pop`.</details> |
| [739 - Daily Temperatures](/solutions/Problems/Medium/739_Daily_Temperatures.swift) | [Leetcode](https://leetcode.com/problems/daily-temperatures/description/) | 🟡 | Array, Stack, Monotonic Stack | <details><summary>⚠️ Notes</summary>TBD to deep dive</details> |
| [853 - Car Fleet](/solutions/Problems/Medium/853_Car_Fleet.swift) | [Leetcode](https://leetcode.com/problems/car-fleet/) | 🟡 | Array, Stack, Sorting, Monotonic Stack | <details><summary>⚠️ Notes</summary>Notes</details> |
| [84 - Largest Rectangle In Histogram](/solutions/Problems/Hard/84_Largest_Rectangle_In_Histogram.swift) | [Leetcode](https://leetcode.com/problems/largest-rectangle-in-histogram/) | 🔴 | TBD | <details><summary>⚠️ Notes</summary>TBD</details> |

### Binary Search

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [704 - Binary Search](/solutions/Problems/Easy/704_Binary_Search.swift) | [Leetcode](https://leetcode.com/problems/binary-search) | 🟢 | Array, Binary Search | <details><summary>⚠️ Notes</summary>TBD</details> |
| [74 - Search a 2D Matrix](/solutions/Problems/Medium/74_Search_2D_Matrix.swift) | [Leetcode](https://leetcode.com/problems/search-a-2d-matrix) | 🟡 | Array, Binary Search, Matrix | <details><summary>⚠️ Notes</summary>TBD</details> |
| [875 - Koko Eating Bananas](/solutions/Problems/Medium/875_Koko_Eating_Bananas.swift) | [Leetcode](https://leetcode.com/problems/koko-eating-bananas) | 🟡 | Binary Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |

### Sliding Window

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [121 - Best Time to Buy and Sell Stock](/solutions/Problems/Easy/121_Best_Time_to_Buy_and_Sell_Stock.swift) | [Leetcode](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/) | 🟢 | Array, Dynamic Programming | <details><summary>⚠️ Notes</summary>TBD</details> |
| [3 - Longest Substring Without Repeating Characters](/solutions/Problems/Medium/3_Longest_Substring_Without_Repeating_Characters.swift) | [Leetcode](https://leetcode.com/problems/longest-substring-without-repeating-characters) | 🟡 | Hash Table, String, Sliding Window | <details><summary>⚠️ Notes</summary>TBD</details> |

### Linked List

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [206 - Reverse Linked List](/solutions/Problems/Easy/206_Reverse_Linked_List.swift) | [Leetcode](https://leetcode.com/problems/reverse-linked-list/) | 🟢 | Linked List, Recursion | <details><summary>⚠️ Notes</summary>TBD</details> |
| [21 - Merge Two Sorted Lists](/solutions/Problems/Easy/21_Merge_Two_Sorted_Lists.swift) | [Leetcode](https://leetcode.com/problems/merge-two-sorted-lists/) | 🟢 | Linked List, Recursion | <details><summary>⚠️ Notes</summary>TBD</details> |
| [143 - Reorder List](/solutions/Problems/Medium/143_Reorder_List.swift) | [Leetcode](https://leetcode.com/problems/reorder-list/) | 🟡 | Linked List, Two Pointers, Stack, Recursion | <details><summary>⚠️ Notes</summary>TBD</details> |
| [19 - Remove Nth Node From End of List](/solutions/Problems/Medium/19_Remove_Nth_Node_From_End_of_List.swift) | [Leetcode](https://leetcode.com/problems/remove-nth-node-from-end-of-list/) | 🟡 | Linked List, Two Pointers | <details><summary>⚠️ Notes</summary>TBD</details> |

### Trees

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [226 - Invert Binary Tree](/solutions/Problems/Easy/226_Invert_Binary_Tree.swift) | [Leetcode](https://leetcode.com/problems/invert-binary-tree/) | 🟢 | Tree, Depth-First Search, Breadth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |
| [104 - Maximum Depth of Binary Tree](/solutions/Problems/Easy/104_Maximum_Depth_of_Binary_Tree.swift) | [Leetcode](https://leetcode.com/problems/maximum-depth-of-binary-tree/) | 🟢 | Tree, Depth-First Search, Breadth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |
| [543 - Diameter of Binary Tree](/solutions/Problems/Easy/543_Diameter_of_Binary_Tree.swift) | [Leetcode](https://leetcode.com/problems/diameter-of-binary-tree/) | 🟢 | Tree, Depth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |
| [110 - Balanced Binary Tree](/solutions/Problems/Easy/110_Balanced_Binary_Tree.swift) | [Leetcode](https://leetcode.com/problems/balanced-binary-tree/) | 🟢 | Tree, Depth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |
| [100 - Same Tree](/solutions/Problems/Easy/100_Same_Tree.swift) | [Leetcode](https://leetcode.com/problems/same-tree/) | 🟢 | Tree, Depth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |
| [572 - Subtree of Another Tree](/solutions/Problems/Easy/572_Subtree_of_Another_Tree.swift) | [Leetcode](https://leetcode.com/problems/subtree-of-another-tree/) | 🟢 | Tree, Depth-First Search, Binary Tree | <details><summary>⚠️ Notes</summary>TBD</details> |

### Heap / Priority Queue


### Intervials


### Greedy


### Backtracking


### Graphs


### Advanced Graphs


### 1-D DP


### 2-D DP


### Bit Manipulation


### Math & Geometry


### Other

| Problem | Leetcode | Difficulty | Topics | Notes | 
|---|---|---|---|---|
| [2942 - Find Words Containing Character](/solutions/Problems/Easy/2942_Find_Words_Containing_Character.swift) | [Leetcode](https://leetcode.com/problems/find-words-containing-character/) | 🟢 | Array, String | n/a |
| [2894 - Divisible and Non-divisible Sums Difference](/solutions/Problems/Easy/2894_Divisible_and_Non_divisible_Sums_Difference.swift) | [Leetcode](https://leetcode.com/problems/divisible-and-non-divisible-sums-difference/) | 🟢 | Math | n/a |
| [3174 - Clear Digits](/solutions/Problems/Easy/3174_Clear_Digits.swift) | [Leetcode](https://leetcode.com/problems/clear-digits/) | 🟢 | String, Stack, Simulation | n/a |
| [3516 - Find Closest Person](/solutions/Problems/Easy/3516_Find_Closest_Person.swift) | [Leetcode](https://leetcode.com/problems/find-closest-person/) | 🟢 | Math | n/a |
