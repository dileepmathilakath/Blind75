/*
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 Example 1:

 Input: nums = [1,2,3,1]
 Output: true

 Example 2:
 
 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:
 
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true

 Constraints:

 1 <= nums.length <= 105
 -109 <= nums[i] <= 109
 
 URL: https://leetcode.com/problems/contains-duplicate/
 Author - https://leetcode.com/coderdm/
 */


import Foundation

extension Solution {
    public func containsDuplicate(_ nums: [Int]) -> Bool {
        var numsSet = [Int]()
        for num in nums {
            if numsSet.contains(num) {
                return true
            }
            numsSet.append(num)
        }
        return false
    }
}

/*
 Notes - Use hashset, and in case duplicate value will be already there in hashset
 Guidance - hashset to get unique values in array, to check for duplicates easily
 */