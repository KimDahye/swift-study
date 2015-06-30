// Playground - noun: a place where people can play

import Cocoa

func hammingWeight(value:Int) -> (String, Int) {
    var binary = ""
    var param = value
    var count = 0
    while param / 2 > 0 {
        let r = param % 2
        binary = String(r) + binary
        if r == 1 {count++}
        param = param / 2
    }
    
    if param == 1 {
        return (String(param) + binary, count + 1)
    }
    else {
        return (binary, count)
    }
}

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

let result = hammingWeight(11);
println(result.0)
println(result.1)
let resultFuctional = hammingWeightFunctional(11);

func makePascalTriangle (numOfRows:Int) -> [[Int]] {
    if numOfRows == 1 {
        return [[1]]
    }else {
        var temp : [Int];
        var prev : [[Int]] = []
        prev = makePascalTriangle(numOfRows-1)
        println(prev)
        var prevRow = prev[prev.count - 1]
        temp  = makeRow(prevRow)
        prev.append(temp)
        return (prev)
    }
}

func makeRow(row:[Int]) -> [Int] {
    var result:[Int] = []
    var temp:[Int] = row
    temp.insert(0, atIndex:0)
    temp.append(0)
    println(temp)
    var i = 0
    for i in 1 ..< temp.count {
        result.append(temp[i-1] + temp[i])
    };
    return result;
}

makePascalTriangle(4)
