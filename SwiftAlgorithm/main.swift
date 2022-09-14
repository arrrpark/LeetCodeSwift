//
//  main.swift
//  SwiftAlgorithm
//
//  Created by Arrr Park on 08/09/2022.
//

import Foundation

let prices: [Int] = [7, 1, 5, 3, 6, 4]

var memo: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: prices.count)

for i in 0..<prices.count {
    if i == 0 {
        memo[0][0] = prices[0]
    } else {
        memo[i][0] = min(memo[i-1][0], prices[i])
        memo[i][1] = max(memo[i-1][1], prices[i] - memo[i][0])
    }
}

var result = Int.min
for i in 0..<memo.count {
    if result < memo[i][1] {
        result = memo[i][1]
    }
}

var set = Set<Int>()


print(result)
