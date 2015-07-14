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

let x : JSONNode = .ArrayNode 