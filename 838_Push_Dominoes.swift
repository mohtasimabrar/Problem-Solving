class Solution {
    func pushDominoes(_ dominoes: String) -> String {
        let charSet = Array(dominoes)
    
        var ansArray = Array<String>(repeating: ".", count: charSet.count)

        var dotCount = 0
        var lastMove = "."

        for i in 0..<charSet.count {
            if charSet[i] == "L" {
                if lastMove == "R" {
                    if (dotCount % 2 == 0) {
                        for j in 0...dotCount/2 {
                            ansArray[i-j] = "L"
                        }
                        for j in 0..<dotCount/2 {
                            ansArray[i-j-1-dotCount/2] = "R"
                        }
                    } else {
                        for j in 0...dotCount/2 {
                            ansArray[i-j] = "L"
                        }
                        ansArray[i-1-dotCount/2] = "."
                        for j in 0..<dotCount/2 {
                            ansArray[i-j-2-dotCount/2] = "R"
                        }
                    }
                }
                else {
                    for j in 0...dotCount {
                        ansArray[i-j] = "L"
                    }
                }
                lastMove = "L"
                dotCount = 0
            }
            else if charSet[i] == "R" {
                if lastMove == "R" {
                    for j in 0...dotCount {
                        ansArray[i-j] = "R"
                    }
                }
                ansArray[i] = "R"
                lastMove = "R"
                dotCount = 0
            }
            else if charSet[i] == "." {
                if i == charSet.count - 1 && lastMove == "R"{
                    for j in 0...dotCount {
                        ansArray[i-j] = "R"
                    }
                }
                dotCount += 1
            }
        }

        return ansArray.joined()
    }
}
