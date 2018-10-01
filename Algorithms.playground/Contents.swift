import UIKit


func matrixElementsSum(matrix: [[Int]]) -> Int {
    var reMatrix = matrix
    var sum : Int = 0
    
    for col in 0...reMatrix.count - 1 {
        for row in 0...reMatrix[col].count - 1 {
            if(reMatrix[col][row] == 0){
                for aux in col...reMatrix.count - 1{
                    reMatrix[aux][row] = 0
                }
            }
            else{
                sum += reMatrix[col][row]
            }
        }
    }
    return sum
}

var matrix : [[Int]] = [[0,1,1,2],[0,5,0,0],[2,0,3,3]]
print(matrixElementsSum(matrix: matrix))

