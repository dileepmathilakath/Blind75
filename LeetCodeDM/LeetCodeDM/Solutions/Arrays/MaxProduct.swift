//
//  Maximum Product Subarray.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 17/03/24.
//

/*
 Given an integer array nums, find a
 subarray
  that has the largest product, and return the product.

 The test cases are generated so that the answer will fit in a 32-bit integer.
 Example 1:

 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.
 Example 2:

 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
  

 Constraints:

 1 <= nums.length <= 2 * 104
 -10 <= nums[i] <= 10
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 
 URL - https://leetcode.com/problems/maximum-product-subarray/
 Author - https://leetcode.com/coderdm/
 */


import Foundation

extension Solution {

    /*
     Calculate the max and min. Min has to be calculated as there will negative numbers, consider min is -12, next number is -6, 
     then min will greater than max.
     
     hint: dp: compute max and max-abs-val for each prefix subarr;
     */
    
    func maxProduct(_ nums: [Int]) -> Int {
        var cMax = 1
        var cMin = 1
        var result = nums[0]
        for num in nums {
            let temp = cMax * num
            cMax = max(temp, cMin * num, num)
            cMin = min(temp, cMin * num, num)
            result = max(result, cMax)
            print(cMax, cMin, result )
        }
        return result
    }
}
