class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if haystack == needle || needle.isEmpty {
            return 0
        }
        let a = Array(haystack.characters)
        let b = Array(needle.characters)
        if a.count < b.count {
            return -1
        }
        
        for i in 0..<a.count-b.count+1 {
            for j in 0..<b.count {
                if a[i+j] != b[j] {
                    break
                }
                if j==b.count-1{
                    return i
                }
            }
        }
        return -1
    }
}

Solution().strStr("mississippi", "pi")