class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.count < 3 {
            return 0
        }
        var start = 0
        var end = height.count - 1
        var left = height[start]
        var right = height[end]
        var res = 0
        while start < end - 1 {
            if left < right {
                let tmp = height[start + 1]
                if tmp < left {
                    res += left - tmp
                }else {
                    left = tmp
                }
                start += 1
            }else {
                let tmp = height[end - 1]
                if tmp < right {
                    res += right - tmp
                }else {
                    right = tmp
                }
                end -= 1
            }
        }
        return res
    }
}

Solution.init().trap([0,1,0,2,1,0,1,3,2,1,2,1])
