//
//  Extensions.swift
//  leetcode
//
//  Created by Aliaksandr Tserashkou on 22/06/2025.
//

extension String {
    public subscript(_ idx: Int) -> Character {
        self[self.index(self.startIndex, offsetBy: idx)]
    }
}
