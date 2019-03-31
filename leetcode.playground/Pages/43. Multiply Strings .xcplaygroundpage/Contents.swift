class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }
        let arr1:[Int] = Array(num1.characters).flatMap({Int($0.description)}).reversed()
        let arr2:[Int] = Array(num2.characters).flatMap({Int($0.description)}).reversed()
        var arr3:[Int] = Array.init(repeating: 0, count: arr1.count + arr2.count)

        for a1 in arr1.enumerated() {
            for a2 in arr2.enumerated() {
                let m = a1.offset + a2.offset
                let n = a1.element * a2.element
                var tmp = arr3[m] + n


                arr3[m] = tmp%10
                tmp = tmp/10
                var i = 1
                while tmp > 0 {
                    arr3[m + i] += tmp%10
                    tmp = tmp/10
                    i += 1
                }
            }
        }
        
        if arr3.last == 0 {
            arr3.removeLast()
        }

        
        return arr3.reversed().reduce("", {$0.0.description + $0.1.description})
    }
}
Solution().multiply("99", "99")
