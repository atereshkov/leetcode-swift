//
//  ListNode.swift
//  leetcode
//
//  Created by Aliaksandr Tserashkou on 15/12/2024.
//

class ListNode: Equatable {
    var val: Int
    var next: ListNode?

    init() {
        self.val = 0
        self.next = nil
    }
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

extension ListNode {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
}
