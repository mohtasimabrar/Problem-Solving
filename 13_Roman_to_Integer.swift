class Solution {
    func romanToInt(_ s: String) -> Int {
        let val = Array(s)
        var integarVal = 0
        var i = 0
        while i < val.count {
            if i != val.count - 1 {
                if val[i] == "I" {
                    if val[i+1] == "V" {
                        integarVal += 4
                        i += 2
                    } else if val[i+1] == "X" {
                        integarVal += 9
                        i += 2
                    } else {
                        integarVal += convertToInt(val[i])
                        i += 1
                    }
                } else if val[i] == "X" {
                    if val[i+1] == "L" {
                        integarVal += 40
                        i += 2
                    } else if val[i+1] == "C" {
                        integarVal += 90
                        i += 2
                    } else {
                        integarVal += convertToInt(val[i])
                        i += 1
                    }
                } else if val[i] == "C" {
                    if val[i+1] == "D" {
                        integarVal += 400
                        i += 2
                    } else if val[i+1] == "M" {
                        integarVal += 900
                        i += 2
                    } else {
                        integarVal += convertToInt(val[i])
                        i += 1
                    }
                } else {
                    integarVal += convertToInt(val[i])
                    i += 1
                }
            } else {
                integarVal += convertToInt(val[i])
                i += 1
            }
        }
        return integarVal
    }

    func convertToInt(_ a: Character) -> Int {
        switch (a)  {
        case "I":
            return 1

        case "V":
            return 5

        case "X":
            return 10

        case "L":
            return 50

        case "C":
            return 100

        case "D":
            return 500

        case "M":
            return 1000

        default:
            return 0
        }
    }
}
