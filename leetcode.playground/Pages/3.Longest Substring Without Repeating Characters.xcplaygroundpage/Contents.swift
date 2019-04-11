import Foundation

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var maxL = 0
        var start = 0
        var end = 0
        var chars = Array(s)
        for c in chars {
            for j in start..<end {
                if chars[j] == c {
                    start = j + 1
                    break
                }
            }
            if start + maxL > chars.count - 1 {
                break
            }
            end = end + 1
            maxL = max(maxL, end - start)
        }
        
        return maxL
    }
}

Solution().lengthOfLongestSubstring("abcabcbb")
Solution().lengthOfLongestSubstring("bbbbb")
Solution().lengthOfLongestSubstring("pwwkew")
Solution().lengthOfLongestSubstring("brnk")


