//
//  CharStack.swift
//  leetcode
//
//  Created by Aliaksandr Tserashkou on 02/06/2025.
//

class CharStack {
    private var stack: [Character]

    init() {
        stack = []
    }

    func push(_ val: Character) {
        stack.append(val)
    }

    func pop() -> Character? {
        stack.removeLast()
    }

    func top() -> Character? {
        return stack.last
    }

    func joined() -> String {
        return stack.map { String($0) }.joined()
    }
}
