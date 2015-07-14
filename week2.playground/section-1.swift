// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func numOfItemsInSection(section : Int, loadButtonsState : Bool, isPad : Bool, itemCount : Int) -> Int {
    let param = (section, loadButtonsState, isPad);
    var val = 0;
    
    switch param {
    case (0, true, _):
        val = itemCount
    case(0, _, true):
        val = 8
    case(0, _, _):
        val = 4
    case(1, true, _):
        val = 0
    default:
        val = 1
    }
    
    return val
}

numOfItemsInSection(0, false, false, 1);

func workLadder(beginWord : String, endWord : String, wordDic : Set<String>) -> ([String]) {
    var change = "";
    
    for(index = 0; index<beginWord.length; i++) {
        for(char char = "a" ... "z") {
            
        }
    }
}