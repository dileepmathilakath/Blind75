/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 Example 2:

 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
  

 Constraints:

 2 <= nums.length <= 105
 -30 <= nums[i] <= 30
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
  
 
 Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
 
 URL - https://leetcode.com/problems/product-of-array-except-self/
 Author - https://leetcode.com/coderdm/
 */

import Foundation

extension Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output = Array(repeating: 1, count: nums.count)
        var prefix = 1
        for (index, value) in nums.enumerated() {
            output[index] = prefix
            prefix *= value
        }
        var postfix = 1
        var index = nums.count - 1
        while index >= 0 {
            output[index] *= postfix
            postfix *= nums[index]
            index -= 1
        }
        debugPrint(output)
        return output
    }
}

/*
 Notes - 
 First calculate the prefix by looping till last. Multiple every element by it's prefix element.
 Then calculate the postfix, similarly but from reverse. Also when value is added to the output array postfix is multiplied with index value
 
 Guidance - make two passes, first in-order, second in-reverse, to compute products
 */
