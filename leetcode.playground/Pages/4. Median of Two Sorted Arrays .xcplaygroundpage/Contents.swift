
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        
        let c1 = nums1.count
        let c2 = nums2.count
        let c = c1 + c2
        
        var i = 0
        var j = 0
        var numArr:[Int] = []
        
        while true {
            
            if i == c1 && j == c2 {
                break
            }else if i == c1 {
                numArr.append(nums2[j])
                j = j + 1
            }else if j == c2 {
                numArr.append(nums1[i])
                i = i + 1
            }else if nums1[i] < nums2[j] {
                numArr.append(nums1[i])
                i = i + 1
            }else {
                numArr.append(nums2[j])
                j = j + 1
            }
            let t = i + j - 1
            if c%2 == 0 {
                if t == c/2 {
                    return Double(numArr[t] + numArr[t-1])/2
                }
            }else {
                if (t + 1) == (c + 1)/2 {
                    return Double(numArr[t])
                }
            }
        }
        return 0
    }
}

Solution().findMedianSortedArrays([1,3], [2])
Solution().findMedianSortedArrays([1,2,5], [1,4])
