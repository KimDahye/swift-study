// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

enum JSONNode {
    case NullNode
    case StringNode(String)
    case NumberNode(Float)
    case BoolNode(Bool)
    case ArrayNode([JSONNode])
    case ObjectNode([String:JSONNode])
}

let x : JSONNode = .ArrayNode(
    [.NumberNode(10.0),
    .StringNode("hello"),
    .BoolNode(false)
    ]
)

let y : JSONNode = .ObjectNode(
    [
        "one" : .NullNode,
        "two" : x,
        "three": .StringNode("hi")
    ]
)

func jsonStringify(json: JSONNode) -> String {
    switch json {
    case .NullNode :
        return "null"
    case .StringNode(let str) :
        return "\"" + str + "\""
    case .NumberNode(let num) :
        return toString(num)
    case .BoolNode(let bool) :
        return toString(bool)
    case .ArrayNode(let jsonArr) :
        var arr:[String] = []
        for node in jsonArr {
            arr.append(jsonStringify(node))
        }
        return "[" + ", ".join(arr) + "]"
    case .ObjectNode(let dic) :
        str = "["
        for key in dic.keys {
            str += "(\(key) :"
            str += jsonStringify(dic[key]!)
            str += ") "
        }
        str += "]"
        return str
    default :
        return "default"
    }
}

jsonStringify(x)
print(jsonStringify(y))

