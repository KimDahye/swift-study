// Playground - noun: a place where people can play

import Cocoa

// Hamming Weight - 상수만 사용하도록 바꿔보았습니다.
func hammingWeightFunctional(val:Int) -> (String, Int) {
    if val == 0 {
        return ("0", 0)
    }
    else if val == 1 {
        return ("1", 1)
    }
    else {
        let prev = hammingWeightFunctional(val/2)
        let prevcode = prev.0
        let prevcount = prev.1
        if val%2 == 1 {
            return (prevcode + "1", prevcount+1)
        }
       return (prevcode + "0", prevcount)
    }
}

let resultFuctional = hammingWeightFunctional(11);

func makePascalTriangle (numOfRows:Int) -> [[Int]] {
    func makeRow(row:[Int]) -> [Int] {
        var result:[Int] = []
        var temp:[Int] = row
        temp.insert(0, atIndex:0)
        temp.append(0)
        var i = 0
        for i in 1 ..< temp.count {
            result.append(temp[i-1] + temp[i])
        };
        return result;
    }

    if numOfRows == 1 {
        return [[1]]
    }else {
        var prev : [[Int]] = makePascalTriangle(numOfRows-1)
        let prevRow = prev[prev.count - 1]
        let temp : [Int] = makeRow(prevRow)
        prev.append(temp)
        return prev
    }
}

makePascalTriangle(4)
