//
//  MissingNumber.swift
//  SwiftAlgorithm
//
//  Created by Arrr Park on 14/09/2022.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    var result = -1
    var memo: [Bool] = [Bool](repeating: false, count: nums.count + 1)

    for i in 0..<nums.count {
        memo[nums[i]] = true
    }

    for i in 0..<memo.count {
        if !memo[i] {
            result = i;
        }
    }

    return result
}


