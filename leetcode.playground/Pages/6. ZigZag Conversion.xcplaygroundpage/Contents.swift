class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if s.characters.count <= numRows || numRows == 1 { return s }
        
        let chars = Array(s.characters)
        let t = (2 * numRows)-2
        var resArr:[[Character]] = Array(repeating: [], count: numRows)
        for i in 0..<chars.count {
            let tmp = numRows - 1 - abs(numRows - 1 - i%t)
            resArr[tmp].append(chars[i])
        }
        let r = resArr.flatMap({$0})
        return r.reduce("", { $0 + String($1) })
    }
}


//Solution().convert("PAYPALISHIRING", 3)

Solution().convert("A", 1)


