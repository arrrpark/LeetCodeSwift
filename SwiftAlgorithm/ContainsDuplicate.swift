//  217 Contains Duplicate

import Foundation

func containsDuplicate(_ nums: [Int]) -> Bool {
    var isDuplicated = false
    var set = Set<Int>()
    
    for i in 0..<nums.count {
        if set.contains(nums[i]) {
            isDuplicated = true
            break
        } else {
            set.insert(nums[i])
        }
    }
    
    return isDuplicated
}
