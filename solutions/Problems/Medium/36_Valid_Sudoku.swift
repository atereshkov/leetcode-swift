/*
 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
 1. Each row must contain the digits 1-9 without repetition.
 2. Each column must contain the digits 1-9 without repetition.
 3. Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.

 Note:
 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.

 Example 1:
 [!example](https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Sudoku-by-L2G-20050714.svg/250px-Sudoku-by-L2G-20050714.svg.png)

 Input: board =
 [["5","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: true

 Example 2:
 Input: board =
 [["8","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

 Constraints:
 1. board.length == 9
 2. board[i].length == 9
 3. board[i][j] is a digit 1-9 or '.'.
 */

import Foundation

// Option 1. O(n) / O(9^2)

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rowSet: [Int: Set<Character>] = [:]

    var columnSet: [Int: Set<Character>] = [:]

    // key = a pair (row / 3, column / 3), value = set of chars
    var boxSet: [Pair<Int, Int>: Set<Character>] = [:]

    for i in 0..<board.count {
        for j in 0..<board[i].count {
            let value = board[i][j]
            guard value.isNumber else { continue }
            if rowSet[i] == nil {
                rowSet[i] = []
            }
            if columnSet[j] == nil {
                columnSet[j] = []
            }
            if boxSet[Pair(first: i / 3, second: j / 3)] == nil {
                boxSet[Pair(first: i / 3, second: j / 3)] = []
            }

            if rowSet[i]?.contains(value) == true ||
                columnSet[j]?.contains(value) == true ||
                boxSet[Pair(first: i / 3, second: j / 3)]?.contains(value) == true {
                return false
            }
            rowSet[i]?.insert(value)
            columnSet[j]?.insert(value)
            boxSet[Pair(first: i / 3, second: j / 3)]?.insert(value)
        }
    }
    return true
}

struct Pair<T: Hashable, U: Hashable>: Hashable {
    let first: T
    let second: U
}

/*
 [["0,0","0,1","0,2","0,3","0,4","0,5","0,6","0,7","0,8"]
 ,["1,0","1,1","1,2","1,3","1,4","1,5","1,6","1,7","1,8"]
 ,["2,0","2,1","2,2","2,3","2,4","2,5","2,6","2,7","2,8"]
 ,["3,0","3,1","3,2","3,3","3,4","3,5","3,6","3,7","3,8"]
 ,["4,0","4,1","4,2","4,3","4,4","4,5","4,6","4,7","4,8"]
 ,["5,0","5,1","5,2","5,3","5,4","5,5","5,6","5,7","5,8"]
 ,["6,0","6,1","6,2","6,3","6,4","6,5","6,6","6,7","6,8"]
 ,["7,0","7,1","7,2","7,3","7,4","7,5","7,6","7,7","7,8"]
 ,["8,0","8,1","8,2","8,3","8,4","8,5","8,6","8,7","8,8"]]
*/
