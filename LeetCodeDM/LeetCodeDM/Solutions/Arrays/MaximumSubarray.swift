//
//  MaximumSubarray.swift
//  LeetCodeDM
//
//  Created by M, Dileep on 16/03/24.
//

/*
 Given an integer array nums, find the
 subarray
  with the largest sum, and return its sum.

  

 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 Example 2:

 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.
 Example 3:

 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
  

 Constraints:

 1 <= nums.length <= 105
 -104 <= nums[i] <= 104
  

 Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
 
 URL - https://leetcode.com/problems/maximum-subarray/
 Author - https://leetcode.com/coderdm/
 */

import Foundation

extension Solution {
    // Kadane's Algorithm solution
    
    /*
     Explanation:

     We initialize currentSum with the first element and maxSum to hold the overall maximum sum.
     We iterate through the array starting from the second element (index 1).
     At each iteration, we update currentSum with the greater value between the current element and the sum of the current element and the previous currentSum.
     We update maxSum with the larger value between the current maxSum and the updated currentSum.
     
     HINT: compute max sum for each prefix
     */

    func maxSubArray(_ nums: [Int]) -> Int {
        var currentSum = nums[0]
        var maxSum = currentSum
        
        for num in nums[1...] {
            currentSum = max(num, currentSum + num)
            maxSum = max(maxSum, currentSum)
        }
        return maxSum
    }
}


extension Solution {
    // Divide and Conquer

    /*
     The maximum subarray problem can be solved using the divide and conquer method.
     The idea is to divide the array into two halves, then find the maximum subarray sum in the left half, the right half, and the one crossing the midpoint.
     The maximum of these three will be the maximum subarray sum.
     */
    
    func maxSubArrayDQ(_ nums: [Int]) -> Int {
        maxSubArrayDQ(array: nums, low: 0, high: nums.count - 1)
    }
    
    private func maxSubArrayDQ(array: [Int], low: Int, high: Int) -> Int {
        if low == high {
            return array[low]
        }
        
        let mid = (low + high) / 2
        
        return max(maxSubArrayDQ(array: array, low: low, high: mid),
                   maxSubArrayDQ(array: array, low: mid+1, high: high),
                   maxCrossingSum(array: array, low: low, high: high, mid: mid))
    }
    
    private func maxCrossingSum(array: [Int], low: Int, high: Int, mid: Int)  -> Int {
        var sum = 0
        var leftsum = Int.min
        for i in stride(from: mid, through: low, by: -1) {
            sum += array[i]
            if sum > leftsum {
                leftsum = sum
            }
        }
        
        sum = 0
        var rightsum = Int.min
        
        for i in stride(from: mid + 1, through: high, by: 1) {
            sum += array[i]
            if sum > rightsum {
                rightsum = sum
            }
        }
        
        return leftsum + rightsum
    }
}
