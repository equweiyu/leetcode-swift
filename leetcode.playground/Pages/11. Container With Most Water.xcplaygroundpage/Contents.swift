class Solution {
    func maxArea(_ height: [Int]) -> Int {
        let count = height.count
        if count < 2 { return 0 }
        var left = 0
        var right = height.count - 1
        var res = 0
        while left != right {
            let r = min(height[left], height[right]) * (right - left)
            res = max(r, res)
            if height[left] < height[right] {
                left = left + 1
            }else {
                right = right - 1
            }
        }
        return res
    }
}

let arr:[Int] = Array(1..<3)

Solution().maxArea(arr)
