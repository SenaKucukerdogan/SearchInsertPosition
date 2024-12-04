import Foundation

/*

 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
  
 You must write an algorithm with O(log n) runtime complexity.
 
 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4


 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            low = mid + 1 // Sol aralığı atla
        } else {
            high = mid - 1 // Sağ aralığı atla
        }
    }
    
    return low
}


searchInsert([1,3,5,6], 5)
searchInsert([1,3,5,6], 2)
searchInsert([1,3,5,6], 7)
searchInsert([1,3,5,6], 1)


