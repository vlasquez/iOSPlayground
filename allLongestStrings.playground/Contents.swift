import UIKit

func allLongestStrings(inputArray: [String]) -> [String] {
    var s: String = ""
    
    for word in inputArray{
        if let index = word.index(of: "-") {
            let distance = word.distance(from: word.startIndex, to: index)
            if(distance == word.count){
                s += word + "-"
            }
            else if(distance<s.count){
                s = word + "-"
            }
            
        }
    }
    return s.components(separatedBy: "-") as [String]
}

print(allLongestStrings(inputArray: ["aba", "aa", "ad", "vcd", "aba"]))
