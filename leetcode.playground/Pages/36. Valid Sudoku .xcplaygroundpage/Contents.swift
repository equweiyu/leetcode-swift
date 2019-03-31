class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        
        var tmp:[Character:Character] = [:]
        
        
        for i in 0..<9 {
            tmp = [:]
            for j in 0..<9 {
                let c = board[i][j]
                if c != "." {
                    if let a = tmp[c] {
                        return false
                    }else {
                        tmp[c] = c
                    }
                }
            }
        }
        
        
        for i in 0..<9 {
            tmp = [:]
            for j in 0..<9 {
                let c = board[j][i]
                if c != "." {
                    if let a = tmp[c] {
                        return false
                    }else {
                        tmp[c] = c
                    }
                }
            }
        }
        
        
        for i in 0..<3 {
            for j in 0..<3 {
                tmp = [:]
                for k in 0..<3 {
                    for l in 0..<3 {
                        let c = board[i*3+k][j*3+l]
                        
                        if c != "." {
                            if let a = tmp[c] {
                                return false
                            }else {
                                tmp[c] = c
                            }
                        }
                        
                        
                    }
                }
                
            }
        }
        
        
        
        
        return true
    }
}

let arr:[[Character]] = [[".", "8", "7", "6", "5", "4", "3", "2", "1"], ["2", ".", ".", ".", ".", ".", ".", ".", "."], ["3", ".", ".", ".", ".", ".", ".", ".", "."], ["4", ".", ".", ".", ".", ".", ".", ".", "."], ["5", ".", ".", ".", ".", ".", ".", ".", "."], ["6", ".", ".", ".", ".", ".", ".", ".", "."], ["7", ".", ".", ".", ".", ".", ".", ".", "."], ["8", ".", ".", ".", ".", ".", ".", ".", "."], ["9", ".", ".", ".", ".", ".", ".", ".", "."]]

Solution.init().isValidSudoku(arr)
