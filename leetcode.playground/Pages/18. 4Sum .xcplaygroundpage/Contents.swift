class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        
        let count = nums.count
        guard count > 3 else { return [] }
        let numsSorted = nums.sorted()
        
        var res:[[Int]] = []
        
        for i in 0..<count - 3 {
            
            if numsSorted[i] + numsSorted[i+1] + numsSorted[i+2] + numsSorted[i+3] > target {
                break
            }
            if i>0 && numsSorted[i-1] == numsSorted[i] {
                continue
            }
            
            
            for j in i+1..<count - 2 {
                
                if numsSorted[i] + numsSorted[j] + numsSorted[j+1] + numsSorted[j+2] > target {
                    break
                }
                if j>i+1 && numsSorted[j-1] == numsSorted[j] {
                    continue
                }
                
                
                var k = j+1
                var l = count - 1
                
                while k < l {
                    
                    let s = numsSorted[i] + numsSorted[j] + numsSorted[k] + numsSorted[l]
                    
                    if s == target {
                        res.append([numsSorted[i],numsSorted[j],numsSorted[k],numsSorted[l]])
                        l = l - 1
                        while k<l && numsSorted[l] == numsSorted[l+1] {
                            l = l - 1
                        }
                        k = k + 1
                        while k<l && numsSorted[k] == numsSorted[k-1] {
                            k = k + 1
                        }
                        
                    }else if s > target {
                        l = l - 1
                    }else {
                        k = k + 1
                    }
                }
            }
        }
        return res
    }
}

let nums = [1,0,-1,0,-2,2]
let target = 0
Solution().fourSum(nums, target)