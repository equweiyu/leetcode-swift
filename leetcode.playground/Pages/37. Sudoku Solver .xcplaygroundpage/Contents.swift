class Solution {
    func solveSudoku(_ board: inout [[Character]]) {
        
        var b = board.map({$0.map({$0.description})})
        solveSudokuValueAble(&b)
        board = b.map({$0.flatMap({$0.characters.first})})

    }
    
    
    func solveSudokuValueAble(_ board: inout [[String]]) -> Bool {
        
        for i in 0..<9 {
            for j in 0..<9 {
                let c = board[i][j]
                if c == "." || c.characters.count > 1 {
                    
                    var tmp:[String:Character] = [:]
                    
                    if c == "." {
                        tmp = ["1":"1","2":"2","3":"3","4":"4","5":"5","6":"6","7":"7","8":"8","9":"9"]
                    }else {
                        for t in c.characters {
                            tmp[t.description] = t
                        }
                    }
                    
                    for l in 0..<9 {
                        let c1 = board[i][l]
                        let c2 = board[l][j]
                        if tmp[c1] != nil {
                            tmp.removeValue(forKey: c1)
                        }
                        if tmp[c2] != nil {
                            tmp.removeValue(forKey: c2)
                        }
                    }
                    for m in i/3*3..<i/3*3+3 {
                        for n in j/3*3..<j/3*3+3 {
                            let c = board[m][n]
                            if tmp[c] != nil {
                                tmp.removeValue(forKey: c)
                            }
                        }
                    }
                    
                    
                    let t = Array(tmp.values)
                    board[i][j] = String.init(t)
                    if t.count == 1 {
                        return solveSudokuValueAble(&board)
                    }
                    if t.count < 1 {
                        return false
                    }
                }
            }
        }
        for i in 0..<9 {
            for j in 0..<9 {
                let c = board[i][j]
                if c.characters.count > 1 {
                    
                    for cc in c.characters {
                        let tmp = board
                        board[i][j] = cc.description
                        if solveSudokuValueAble(&board) {
                            return true
                        }else {
                            board = tmp
                        }
                    }
                    return false
                }
            }
        }
        
        return true
    }
}

var arr:[[Character]] = [
    [".", ".", "9", "7", "4", "8", ".", ".", "."],
    ["7", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", "2", ".", "1", ".", "9", ".", ".", "."],
    [".", ".", "7", ".", ".", ".", "2", "4", "."],
    [".", "6", "4", ".", "1", ".", "5", "9", "."],
    [".", "9", "8", ".", ".", ".", "3", ".", "."],
    [".", ".", ".", "8", ".", "3", ".", "2", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", "6"],
    [".", ".", ".", "2", "7", "5", "9", ".", "."]
]

Solution.init().solveSudoku(&arr)
arr.forEach { (a) in
    print(a)
}


